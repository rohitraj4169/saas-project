Rails.application.routes.draw do
  resources :artifacts
  resources :projects
  devise_for :users, :controllers => { :registrations => 'registrations' }
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
