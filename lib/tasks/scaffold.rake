namespace :scaffold do
  desc "CREATE CONTROLLERS MODELS AND VIEWS"
  task bootstrap: :environment do

    # Providers
    Rails::Generators.invoke('scaffold', ['Providers'])
    Rails::Generators.invoke 'active_record:model', ['Provider']

    # Users
    Rails::Generators.invoke('scaffold', ['Users'])
    Rails::Generators.invoke 'active_record:model', ['User']




  end

end
