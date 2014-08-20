module FeedbackMailer
	module FeedbackLinkHelper
		def feedback_link
      content_tag :div, :class => "feedback_container" do
        content_tag(:p, t('feedback_mailer.feedback'), class: "feedback_link" )
      end
		end
	end
end