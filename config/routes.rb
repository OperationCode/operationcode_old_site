Rails.application.routes.draw do
  root "pages#home"

  get "donate" => "pages#donate"
  get "about" => "pages#about"
  get "contributors" => "pages#contributors"
  get "contact" => "pages#contact"
  get "faq" => "pages#faq"
  
  get "/action" => redirect("http://operationcode.launchrock.co/")
end