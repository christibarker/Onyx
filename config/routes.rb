Rails.application.routes.draw do
  
  get 'home/index'

  get 'home/new'

  get 'home/create'

  get 'home/show'

  get 'home/edit'

  get 'home/update'

  get 'home/destroy'

  # devise_for :users
  # # get 'home/index'
  resources :shows
  resources :store_items
  resources :teachers
  resources :lessons
  resources :enrollments
  resources :gift_cards
  resources :instructed_classes
  resources :home
  root "home#index"

   devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
