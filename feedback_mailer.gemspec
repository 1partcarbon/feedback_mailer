$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "feedback_mailer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "feedback_mailer"
  s.version     = FeedbackMailer::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FeedbackMailer."
  s.description = "TODO: Description of FeedbackMailer."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "shoulda-matchers"
end
