require File.join(Rails.root, "lib/mongoid_migration_task")

class UpdatePrimaryPocToEmployer < MongoidMigrationTask
  def migrate
    puts "Started updating primary POC ..."
    binding.pry
    poc_person = Person.where(hbx_id: ENV['person_hbx_id']).first
    employer_profile = Organization.find_by(id: ENV['organization_id']).employer_profile
    if employer_profile.blank?
      raise 'No Employer Profile found for organization'
    elsif poc_person.blank?
      raise "Invalid Hbx Id"
    else
      binding.pry
      employer_profile.staff_roles.each do |person|
        binding.pry
        make_poc = (person.hbx_id == ENV['person_hbx_id']) ? true : false
        person.make_primary(make_poc)
      end
      puts "Successfully updated POC"
    end
  end
end