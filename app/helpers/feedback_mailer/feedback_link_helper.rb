module FeedbackMailer
	module FeedbackLinkHelper
		def feedback_link
			link_to 'Feedback', feedback_mailer.new_feedback_path
		end
	end
end