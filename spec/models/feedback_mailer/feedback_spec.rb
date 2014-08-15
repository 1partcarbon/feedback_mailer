require 'spec_helper'

describe FeedbackMailer::Feedback do

	describe 'Validations' do

		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:subject) }
		it { should validate_presence_of(:message) }
		it { should validate_presence_of(:email) }

		# it 'is invalid if the name is not present' do

		# 	subject.name = 'test'
		# 	should validate_presence_of(subject.name)
		# end

		# # it 'is valid if the name is present' do
		# # 	subject.name = 'Ricky'
		# # 	expect(subject).to be_valid
		# # end

		# it 'is invalid if the email is not present' do
		# 	subject.email = nil
		# 	should_not validate_presence_of(subject.email)
		# end

		# it 'is invalid if the subject is not present' do

		# 	subject.subject = nil
		# 	should_not validate_presence_of(subject.subject)
		# end

		# it 'is invalid if the message is not present' do

		# 	subject.message = nil
		# 	should_not validate_presence_of(subject.message)
		# end

		# it 'is valid if the name, email, subject and message are present' do
		# 	subject.name = 'Ricky'
		# 	subject.email = 'dave@amazing.com'
		# 	subject.subject = 'subject' 
		# 	subject.message = 'message'
		# 	expect(subject).to be_valid
		# end


		it { should allow_value('test@test.com').for(:email)}

		it { should_not allow_value('dfgdfgdsfg').for(:email)}

	end
end
