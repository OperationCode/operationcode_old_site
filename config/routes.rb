Rails.application.routes.draw do
  root "pages#home"

  get "about" => "pages#about"
  get "donate" => "pages#donate"
  get "founder" => "pages#founder"
  get "contributors" => "pages#contributors"
  get "contact" => "pages#contact"
  get "faq" => "pages#faq"
  
  get "/action" => redirect("http://operationcode.launchrock.co/")
end