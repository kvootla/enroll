require File.join(Rails.root, "lib/mongoid_migration_task")
class RemoveDuplicateDependent < MongoidMigrationTask
  def migrate
    #person_hbx_id=59ca85edfaca14693f00007d
    person = Person.where(hbx_id: ENV['person_hbx_id']).first
    if person.blank? && person.primary_family.nil?
      raise "Invalid hbx_id of Person / Family Member "
    else
      puts "Removing Family member record" unless Rails.env.test?
      family = person.primary_family
      coverage_household = family.active_household.immediate_family_coverage_household
      valid_family_members = coverage_household.family.family_members.map(&:id).map(&:to_s)
      active_family_members = family.active_family_members
      active_person_ids = active_family_members.map(&:person_id)
      duplicate_person = active_person_ids.select { |person_id| active_person_ids.count(person_id) > 1 }.uniq
      family_members = active_family_members.select{ |fm| duplicate_person.include?(fm.person_id) }.map(&:id).map(&:to_s)
      family_member_to_delete = family_members - valid_family_members
      family_member_to_delete.each do |family_member|
        puts "Removing Family member with id #{family_member}" unless Rails.env.test?
        FamilyMember.find(family_member).destroy
      end
    end
  end
end