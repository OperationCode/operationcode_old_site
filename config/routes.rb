Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :veterans
<<<<<<< HEAD
=======
  resources :donations, only: [:index, :new, :create]
>>>>>>> upstream/master

  get "about" => "pages#about"
  get "board" => "pages#board"
  get "contact" => "pages#contact"
  get "contributors" => "pages#contributors"
  get "codeschools" => "pages#codeschools"
<<<<<<< HEAD
=======
  get "employers" => "pages#employers"
>>>>>>> upstream/master
  get "events" => "pages#events"
  get "faq" => "pages#faq"
  get "founder" => "pages#founder"
  get "hackathons" => "pages#hackathons"
<<<<<<< HEAD
  get "hello" => "pages#hello"
  get "history" => "pages#history"
  get "online" => "pages#online"
  get "media" => "pages#media"
  get "mission" => "pages#mission"
  get "news" => "pages#news"
  get "press" => "pages#press"
=======
  get "history" => "pages#history"
  get "online" => "pages#online"
  get "media" => "pages#media"
  get "mentorship" => "pages#mentorship"
  get "mission" => "pages#mission"
  get "news" => "pages#news"
  get "press" => "pages#press"
  get "privacy" => "pages#privacy"
  get "scholarships" => "pages#scholarships"
>>>>>>> upstream/master
  get "speakerrequest" => "pages#speakerrequest"
  get "successes" => "pages#successes"
  get "team" => "pages#team"

  get "action" => "veterans#new"

  get "/launchparty" => redirect("http://www.eventbrite.com/e/operation-code-launch-party-tickets-16494832488")
<<<<<<< HEAD
  get "/donate" => redirect("https://www.cogostar.org/payments/new/project/49")
  get "/learn" => redirect("/online")

=======
  get "/donate" => redirect("/donations/new")
  get "/staff" => redirect("/board")
  get "/hello" => redirect("/founder")
  get "/learn" => redirect("/online")
>>>>>>> upstream/master
  get "/contribute" => redirect("https://github.com/operationcode/operationcode")

  root "pages#home"
end
