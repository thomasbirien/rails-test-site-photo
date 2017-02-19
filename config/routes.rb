Rails.application.routes.draw do
  root 'gallerys#index'
  resources :gallerys
    resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
