# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( teaspoon.css )
Rails.application.config.assets.precompile += %w( jasmine/1.3.1.js )
Rails.application.config.assets.precompile += %w( teaspoon-jasmine.js )
Rails.application.config.assets.precompile += %w( teaspoon-teaspoon.js )


# Rails.application.config.assets.precompile += %w{ /feedback_mailer/application.css }
# Rails.application.config.assets.precompile += %w{ application.js }
# Rails.application.config.assets.paths << Root.join("app", "assets", "images")

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
