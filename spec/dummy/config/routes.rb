	Rails.application.routes.draw do
  mount FeedbackMailer::Engine => "/feedback_mailer"
  
  root to: "home#welcome"
end
