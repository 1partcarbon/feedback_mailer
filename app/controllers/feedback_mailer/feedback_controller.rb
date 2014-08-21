require_dependency "feedback_mailer/application_controller"

module FeedbackMailer
  class FeedbackController < ::ApplicationController
    layout -> (controller) { controller.request.xhr? ? false : nil }

    respond_to :html, :js 

    def new
      @feedback = FeedbackMailer::Feedback.new
      respond_with @feedback
    end

    def create
      @feedback = FeedbackMailer::Feedback.new(params[:feedback_form])
      if @feedback.valid?
        FeedbackMailer::Mailer.feedback_form(@feedback).deliver
        flash[:notice] = t('feedback_mailer.feedback_success')
        # respond_to do |format|
        #   format.html { render :new, :layout => !request.xhr? }
        #   format.js { render partial: 'success'}
        # end
        render :success
      else
        render :new 
      end
    end
  end
end