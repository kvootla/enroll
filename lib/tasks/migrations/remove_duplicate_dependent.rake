require File.join(Rails.root, "app", "data_migrations", "remove_duplicate_dependent")
# RAILS_ENV=production bundle exec rake migrations:remove_duplicate_dependent person_hbx_id=19810927
namespace :migrations do
  desc "remove_duplicate_dependent_in_a_family"
  RemoveDuplicateDependent.define_task :remove_duplicate_dependent => :environment
end