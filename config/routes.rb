Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :veterans


  get "news" => "pages#news"
  get "events" => "pages#events"
  get "team" => "pages#team"
  get "founder" => "pages#founder"
  get "hackathons" => "pages#hackathons"
  get "contact" => "pages#contact"
  get "codeschools" => "pages#codeschools"
  get "learn" => "pages#learn"
  get "faq" => "pages#faq"
  get "about" => "pages#about"

  #get "/action" => redirect("http://operationcode.launchrock.co/") #JDavis: capturing this information in-house vs launchrock
  get "action" => "veterans#new"
  get "/launchparty" => redirect("http://www.eventbrite.com/e/operation-code-launch-party-tickets-16494832488")
  get "/donate" => redirect("https://www.cogostar.org/projects/operationcode")

  root "pages#home"
end
