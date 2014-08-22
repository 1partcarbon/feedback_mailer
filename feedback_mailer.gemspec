$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "feedback_mailer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "feedback_mailer"
  s.version     = FeedbackMailer::VERSION
  s.authors     = ["Ricky Dalziel, Teng Li"]
  s.email       = ["ricky@1partcarbon.co.uk, teng@1partcarbon.co.uk"]
  s.homepage    = "www.1partcarbon.co.uk"
  s.summary     = "Feedback engine"
  s.description = "Engine to allow feedback emailing functionality to be plugged into applications"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.5"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "i18n"
  s.add_development_dependency "minitest"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rspec-given"
  s.add_development_dependency "rspec-activemodel-mocks"
  s.add_development_dependency "capybara"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "jquery-rails"
  # s.add_development_dependency "jquery-ui-rails"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "jasmine-rails"
  s.add_development_dependency "jasmine-jquery-rails"
  s.add_development_dependency "teaspoon"

end
