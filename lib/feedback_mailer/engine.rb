module FeedbackMailer
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    isolate_namespace FeedbackMailer
  end
end
