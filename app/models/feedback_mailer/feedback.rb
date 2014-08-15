module FeedbackMailer
	class Feedback 
		include ActiveModel::Validations
		attr_accessor :name, :email, :subject, :message

		validates :name, :email, :subject, :message, presence: true
		validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

	    def initialize(attributes = {})
  			attributes.each do |name, value|
    			send("#{name}=", value)
  		end
		end
	end
end
