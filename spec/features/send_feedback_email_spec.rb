require "rails_helper"

feature "Send Feedback Email" do
  scenario "User Sends Feedback" do
  	
  	visit "/"
  	
  	click_link "Feedback"
  	
  	fill_in "Name", with: "username"
  	fill_in "Email", with: "test@test.com"
  	fill_in "Subject", with: "subject text"
  	fill_in "Message", with: "Message text"

  	click_button "Send feedback"

    expect(ActionMailer::Base.deliveries.length).to eql 1
  end
end