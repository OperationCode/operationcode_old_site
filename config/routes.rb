Rails.application.routes.draw do
  devise_for :veterans, controllers: { registrations: 'veterans/registrations', sessions: 'veterans/sessions' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_scope :veteran do
    get :sign_up, to: 'veterans/registrations#new'
    get :join, to: 'veterans/registrations#new'
    get :login, to: 'veterans/sessions#new'
    get :sign_in, to: 'veterans/sessions#new'

    get 'profile/edit', to: 'veterans/registrations#edit'
  end

  get '/veterans/map', to: 'veterans#map'
  resources :veterans, only: [:new, :create]

  resources :donations, only: [:index, :new, :create]

  get '/profile', to: 'profile#home'
  get '/profile/mentees', to: 'profile#mentees'

  get '/code_schools', to: 'code_schools#index'

  get 'about' => 'pages#about'
  get 'deploy' => 'pages#deploy'
  get 'board' => 'pages#board'
  get 'contact' => 'pages#contact'
  get 'calendar' => 'pages#calendar'
  get 'sponsors' => 'pages#sponsors'
  get 'employers' => 'pages#employers'
  get 'events' => 'pages#events'
  get 'faq' => 'pages#faq'
  get 'founder' => 'pages#founder'
  get 'hackathons' => 'pages#hackathons'
  get 'history' => 'pages#history'
  get 'jsguide' => 'pages#jsguide'
  get 'online' => 'pages#online'
  get 'media' => 'pages#media'
  get 'mentorship' => 'pages#mentorship'
  get 'mission' => 'pages#mission'
  get 'newgibill' => 'pages#newgibill'
  get 'press' => 'pages#press'
  get 'privacy' => 'pages#privacy'
  get 'scholarships' => 'pages#scholarships'
  get 'speakerrequest' => 'pages#speakerrequest'
  get 'successes' => 'pages#successes'
  get 'action' => 'veterans#new'

  get '/contact' => redirect('mailto:david@operationcode.org')
  get '/flatiron' => redirect('https://learn.co/learn-together')
  get '/launchparty' => redirect('http://www.eventbrite.com/e/operation-code-launch-party-tickets-16494832488')
  get '/donate' => redirect('/donations/new')
  get '/learn' => redirect('/online')
  get '/contribute' => redirect('https://github.com/OperationCode/operationcode/blob/master/CONTRIBUTING.md')
  get '/news' => redirect('/newgibill')

  # /blog is still being served by jekyll
  get '/blog' => redirect('https://medium.com/operation-code')

  root 'pages#home'
end
