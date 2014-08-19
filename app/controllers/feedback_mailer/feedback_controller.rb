require_dependency "feedback_mailer/application_controller"

module FeedbackMailer
	class FeedbackController < ::ApplicationController
		def new
			@feedback = FeedbackMailer::Feedback.new			
		end

		def create
			@feedback = FeedbackMailer::Feedback.new(params[:feedback_form])
			if @feedback.valid?
				FeedbackMailer::Mailer.feedback_form(@feedback).deliver

				flash[:notice] = t(:feedback_success)
				redirect_to new_feedback_path
			else
				render :new
			end
		end


	end
end