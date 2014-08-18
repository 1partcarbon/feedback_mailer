module FeedbackMailer
	module FeedbackLinkHelper
		def feedback_link
			link_to 'Feedback', feedback_mailer.new_feedback_path, class: "feedback_link modal-in"
		end
	end
end