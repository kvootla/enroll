require File.join(Rails.root, "app", "data_migrations", "update_primary_poc_to_employer")
# RAILS_ENV=production bundle exec rake migrations:update_primary_poc person_hbx_id=19810927 organization_id=59d7930c53b7510404000030
namespace :migrations do
  desc "Updates Primary POC with given person for a perticular employer"
  UpdatePrimaryPocToEmployer.define_task :update_primary_poc => :environment
end