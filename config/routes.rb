
FeedbackMailer::Engine.routes.draw do

  get '/feedback/new_partial', to: 'feedback#new_partial' 
	resources :feedback


end


