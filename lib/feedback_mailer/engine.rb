module FeedbackMailer
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    # require 'jasmine-jquery'
    isolate_namespace FeedbackMailer
  end
end
