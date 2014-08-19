module FeedbackMailer
  class Mailer < ActionMailer::Base
    def feedback_form(feedback)
    	@feedback = feedback
    	mail(from: @feedback.email, subject: @feedback.subject)
    end
  end
end
