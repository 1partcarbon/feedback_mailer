require 'spec_helper'

describe FeedbackMailer::Feedback do

	describe 'Validations' do

		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:subject) }
		it { should validate_presence_of(:message) }
		it { should validate_presence_of(:email) }

		it { should allow_value('test@test.com').for(:email)}

		it { should_not allow_value('dfgdfgdsfg').for(:email)}

	end
end
