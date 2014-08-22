module FeedbackMailer
	module FeedbackLinkHelper
		def feedback_link
      render partial: 'feedback_mailer/feedback_view'
		end
	end
end