Rails.application.routes.draw do
  devise_for :admins
  resources :veterans


  get "news" => "pages#news"
  get "donate" => "pages#donate"
  get "founder" => "pages#founder"
  get "hackathons" => "pages#hackathons"
  get "contact" => "pages#contact"
  get "codeschools" => "pages#codeschools"
  get "learn" => "pages#learn"
  get "faq" => "pages#faq"
  
  #get "/action" => redirect("http://operationcode.launchrock.co/") #JDavis: capturing this information in-house vs launchrock
  get "action" => "veterans#new"
  
  root "pages#home"
end