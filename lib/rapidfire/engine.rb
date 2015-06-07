module Rapidfire
  class Engine < Rails::Engine

    initializer "Rapidfire.load_app_root" do |app|
       Rapidfire.app_root = app.root
    end

  end
end
