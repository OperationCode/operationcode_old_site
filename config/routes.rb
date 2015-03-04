Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :veterans


  get "news" => "pages#news"
  get "events" => "pages#events"
  get "donate" => "pages#donate"
  get "founder" => "pages#founder"
  get "hackathons" => "pages#hackathons"
  get "contact" => "pages#contact"
  get "codeschools" => "pages#codeschools"
  get "learn" => "pages#learn"
  get "faq" => "pages#faq"
  get "about" => "pages#about"
  
  #get "/action" => redirect("http://operationcode.launchrock.co/") #JDavis: capturing this information in-house vs launchrock
  get "action" => "veterans#new"
  
  root "pages#home"
end