require "rails_helper"
require File.join(Rails.root, "app", "data_migrations", "remove_duplicate_dependent")

describe RemoveDuplicateDependent, dbclean: :after_each do

  let(:given_task_name) { "remove_duplicate_dependent" }
  subject { RemoveDuplicateDependent.new(given_task_name, double(:current_scope => nil)) }
  describe "given a task name" do
    it "has the given task name" do
      expect(subject.name).to eql given_task_name
    end
  end
  describe "remove duplicate dependent", dbclean: :after_each do

    let(:person) { FactoryGirl.create(:person) }
    let(:family) { FactoryGirl.create(:family, :with_primary_family_member, person: person)}
    let(:family_member){ FactoryGirl.create(:family_member,family: family)}
    before do
      allow(ENV).to receive(:[]).with('person_hbx_id').and_return person.hbx_id
    end

    it "should remove an inactive family member to household" do
      family.active_household.immediate_family_coverage_household.coverage_household_members.new(:is_subscriber => true, :family_member_id => "567678789")
      family.active_household.immediate_family_coverage_household.save
      family.active_family_members << family_member
      family.save
      expect(family.active_family_members.last.update_attribute("person_id", family.active_family_members.first.person_id)).to be_truthy
      family.reload
      expect(family.active_family_members.size) == 2
      subject.migrate
      person.reload
      family.reload
      expect(family.active_family_members.size) == 1
    end
  end
end