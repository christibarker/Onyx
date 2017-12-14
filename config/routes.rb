Rails.application.routes.draw do
  
  get 'instructed_classes/index'

  get 'instructed_classes/new'

  get 'instructed_classes/create'

  get 'instructed_classes/show'

  get 'instructed_classes/edit'

  get 'instructed_classes/update'

  get 'instructed_classes/destroy'

  get "/pages/:page" => "pages#show", as: 'static'

  devise_for :users, controllers: {
  registrations: 'users/registrations'
      }

  # devise_for :users
  # # get 'home/index'
  # resources :pages, :gno, :prices
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
