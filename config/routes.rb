Rails.application.routes.draw do
  
  devise_for :users
  root "home#index"
  resources :home
  resources :today
  
  
  # For detailscd  on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
