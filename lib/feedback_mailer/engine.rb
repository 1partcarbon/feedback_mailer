module FeedbackMailer
  class Engine < ::Rails::Engine
    isolate_namespace FeedbackMailer
    # initializer "feedback_mailer.assets.precompile" do |app|
    # 	app.config.assets.precompile += %w{feedback_mailer/application.css}
    # end

  end
end
