Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :veterans

  get "about" => "pages#about"
  get "board" => "pages#board"
  get "contact" => "pages#contact"
  get "contributors" => "pages#contributors"
  get "codeschools" => "pages#codeschools"
  get "events" => "pages#events"
  get "faq" => "pages#faq"
  get "founder" => "pages#founder"
  get "hackathons" => "pages#hackathons"
  get "learn" => "pages#learn"
  get "media" => "pages#media"
  get "mission" => "pages#mission"
  get "news" => "pages#news"
  get "press" => "pages#press"
  get "speakerrequest" => "pages#speakerrequest"
  get "team" => "pages#team"

  #get "/action" => redirect("http://operationcode.launchrock.co/") #JDavis: capturing this information in-house vs launchrock
  get "action" => "veterans#new"
  get "/launchparty" => redirect("http://www.eventbrite.com/e/operation-code-launch-party-tickets-16494832488")
  get "/donate" => redirect("https://www.cogostar.org/projects/operationcode")

  root "pages#home"
end
