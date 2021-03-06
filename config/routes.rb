Rails.application.routes.draw do
  

  get 'admin/index'

  get "/pages/:page" => "pages#show", as: 'static'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'

  }



  resources :workshop
  resources :email
  resources :seats
  resources :shows
  resources :store_items
  resources :teachers
  resources :lessons
  resources :enrollments
  resources :gift_cards
  resources :instructed_classes
  resources :home
  root "home#index"

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
