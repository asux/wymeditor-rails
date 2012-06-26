module WymeditorRails
  class Engine < ::Rails::Engine
    # this just lets rails know to load from vendor/assets

    # Enabling assets precompiling
    initializer :assets do |app|
      app.config.assets.precompile +=
        [
         "wymeditor/lang/*",
         "wymeditor/skins/**/*",
         "wymeditor/iframe/**/*"
        ]
    end
  end
end
