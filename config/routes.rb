Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :veterans

  resources :donations

  get "about" => "pages#about"
  get "staff" => "pages#staff"
  get "contact" => "pages#contact"
  get "contributors" => "pages#contributors"
  get "codeschools" => "pages#codeschools"
  get "employers" => "pages#employers"
  get "events" => "pages#events"
  get "faq" => "pages#faq"
  get "founder" => "pages#founder"
  get "hackathons" => "pages#hackathons"
  get "hello" => "pages#hello"
  get "history" => "pages#history"
  get "online" => "pages#online"
  get "media" => "pages#media"
  get "mentorship" => "pages#mentorship"
  get "mission" => "pages#mission"
  get "news" => "pages#news"
  get "press" => "pages#press"
  get "scholarships" => "pages#scholarships"
  get "speakerrequest" => "pages#speakerrequest"
  get "successes" => "pages#successes"
  get "team" => "pages#team"

  get "action" => "veterans#new"

  get "/launchparty" => redirect("http://www.eventbrite.com/e/operation-code-launch-party-tickets-16494832488")
  get "/donate" => redirect("/contributors")

  get "/learn" => redirect("/online")

  get "/contribute" => redirect("https://github.com/operationcode/operationcode")

  root "pages#home"
end
