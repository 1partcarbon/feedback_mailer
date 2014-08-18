module FeedbackMailer
  class Mailer < ActionMailer::Base
  	default to: APP_CONFIG['feedback_to_address']

    def feedback_form(feedback)
    	@feedback = feedback
    	mail(from: @feedback.email, subject: @feedback.subject)
    end
  end
end
