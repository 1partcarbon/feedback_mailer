module FeedbackMailer
  class Mailer < ActionMailer::Base
  	default to: "sdfgh@sdfgh.com"

    def feedback_form(feedback)
    	@feedback = feedback
    	mail(from: @feedback.email, subject: @feedback.subject)
    end
  end
end
