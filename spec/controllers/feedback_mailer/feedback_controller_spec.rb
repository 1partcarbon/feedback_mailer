require 'rails_helper'


describe FeedbackMailer::FeedbackController do
		routes { FeedbackMailer::Engine.routes }

  describe "GET new" do
    When { get :new }
    Then { expect(assigns[:feedback]).not_to be_nil }
  end


	describe 'POST create' do
		Given { ActionMailer::Base.deliveries.clear }
		Given(:feedback_params) do
			{
				name: 'testName',
				subject: 'testSubject',
				message: 'testMessage',
				email: 'testemail@test.com'

			}
		end
		When {post :create, feedback_form: feedback_params, :use_route => :feedback_mailer}

		Then { expect(response).to redirect_to new_feedback_path }
		And { ActionMailer::Base.deliveries.count == 1}

		context 'if form is invalid' do

			Given(:feedback_params) do
				{
					name: 'test',
					email: nil,
					subject: nil,
					message: 'message'
				}
			end
			Then { expect(response).to render_template(:new) }
			And {ActionMailer::Base.deliveries.count == 0}

		end
	end

end