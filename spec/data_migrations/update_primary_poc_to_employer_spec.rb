require "rails_helper"
require File.join(Rails.root, "app", "data_migrations", "update_primary_poc_to_employer")

describe UpdatePrimaryPocToEmployer do
  let(:given_task_name) { "update_primary_poc" }
  subject { UpdatePrimaryPocToEmployer.new(given_task_name, double(:current_scope => nil)) }

  describe "given a task name" do
     it "has the given task name" do
       expect(subject.name).to eql given_task_name
     end
   end

  describe "update primary poc to employer" do
    let!(:employer_profile) { FactoryGirl.create(:employer_profile)}

    let!(:employer_staff_role) {FactoryGirl.create(:employer_staff_role, aasm_state:'is_active', employer_profile_id: employer_profile.id)}
    let!(:person) { FactoryGirl.create(:person)}
    let!(:organization) { FactoryGirl.create(:organization, employer_profile:employer_profile)}
    # let!(:staff_role) { Person.by_hbx_id(person.hbx_id).first.employer_staff_roles.detect{|role| role.employer_profile_id.to_s == employer_profile.id.to_s} }

   	before(:each) do
      binding.pry
   		allow(ENV).to receive(:[]).with("person_hbx_id").and_return(person.hbx_id)
      allow(ENV).to receive(:[]).with("organization.id").and_return(organization.id)
   	end

    it "should update poc to given person" do
      binding.pry
      expect(employer_staff_role.size).to eq 0
      subject.migrate
      person.reload
      expect(employer_staff_role.size).to eq 1
    end
  end
end