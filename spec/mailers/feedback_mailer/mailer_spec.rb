require 'spec_helper'
 
describe FeedbackMailer::Mailer do
  describe 'feedback' do
    let(:feedback) { mock_model FeedbackMailer::Feedback, name: 'testName', 
      subject: 'testSubject', 
      message: 'testMessage',
      email: 'testemail@test.com' 
    }
    let(:mail) { FeedbackMailer::Mailer.feedback_form(feedback) }
 
    it 'renders the subject' do
      expect(mail.subject).to eql('testSubject')
    end
 
    it 'renders the receiver email' do
      expect(mail.to).to eql(['totest@test.com'])
    encoded*
 
    it 'renders the sender email' do
      expect(mail.from).to eql(['testemail@test.com' ])
    end
 
    it 'assigns @name' do
      expect(mail.body.encoded).to include('testName')
    end

    it 'assigns @subject' do
      expect(mail.body.encoded).to include('testSubject')
    end

    it 'assigns @message' do
      expect(mail.body.encoded).to include('testMessage')
    end

    it 'assigns @email' do
      expect(mail.body.encoded).to include('testemail@test.com')
    end
  end
end