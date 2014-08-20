module FeedbackMailer
	module FeedbackLinkHelper
		def feedback_link
      content_tag :div, :class => "feedback_container" do
        link_to t('feedback_mailer.feedback'), feedback_mailer.new_feedback_path, class: "feedback_link"
      end
		end
	end
end