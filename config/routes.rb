Rails.application.routes.draw do


 

  get 'teachers/index'

  get 'teachers/new'

  get 'teachers/create'

  get 'teachers/show'

  get 'teachers/edit'

  get 'teachers/update'

  get 'teachers/destroy'

  get 'store_items/index'

  get 'store_items/new'

  get 'store_items/create'

  get 'store_items/show'

  get 'store_items/edit'

  get 'store_items/update'

  get 'store_items/destroy'

  get 'shows/index'

  get 'shows/new'

  get 'shows/create'

  get 'shows/show'

  get 'shows/edit'

  get 'shows/update'

  get 'shows/destroy'

  # devise_for :users
  # # get 'home/index'

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
