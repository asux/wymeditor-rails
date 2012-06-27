module WymeditorRails
  class Engine < ::Rails::Engine
    # this just lets rails know to load from vendor/assets

    # Enabling assets precompiling
    initializer :assets, :group => :all do |app|
      app.config.assets.precompile += [ "lang/*"]
      app.config.assets.precompile += [ "skins/**/*"]
      app.config.assets.precompile += [ "iframe/**/*"]
    end
  end
end
