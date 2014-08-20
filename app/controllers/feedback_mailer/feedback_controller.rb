require_dependency "feedback_mailer/application_controller"

module FeedbackMailer
	class FeedbackController < ::ApplicationController
		def new
			@feedback = FeedbackMailer::Feedback.new
			render partial: 'form'			
		end

		def create
			@feedback = FeedbackMailer::Feedback.new(params[:feedback_form])
			if @feedback.valid?
				FeedbackMailer::Mailer.feedback_form(@feedback).deliver

				flash[:notice] = t(:feedback_success)
				render partial: 'success'
			else
				render partial: 'form'
			end
		end


	end
end