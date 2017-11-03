require File.join(Rails.root, "lib/mongoid_migration_task")
class RemoveDuplicateDependent < MongoidMigrationTask
  def migrate
    #person_hbx_id=59ca85edfaca14693f00007d family_member_hbx_id=123123123
    person = Person.where(hbx_id: ENV['person_hbx_id']).first
    dependent_family_member = Forms::FamilyMember.where(:hbx_id => ENV['family_member_hbx_id'])
    if person.blank? && person.primary_family.nil? && dependent_family_member.blank?
      raise "Invalid hbx_id of Person / Family Member "
    else
      puts "Removing Family member record" unless Rails.env.test?
    end
  end
end