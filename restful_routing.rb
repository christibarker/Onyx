                  Prefix Verb   URI Pattern                            Controller#Action
                  static GET    /pages/:page(.:format)                 pages#show
        new_user_session GET    /users/sign_in(.:format)               devise/sessions#new
            user_session POST   /users/sign_in(.:format)               devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)              devise/sessions#destroy
       new_user_password GET    /users/password/new(.:format)          devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)         devise/passwords#edit
           user_password PATCH  /users/password(.:format)              devise/passwords#update
                         PUT    /users/password(.:format)              devise/passwords#update
                         POST   /users/password(.:format)              devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)                users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)               users/registrations#new
  edit_user_registration GET    /users/edit(.:format)                  users/registrations#edit
       user_registration PATCH  /users(.:format)                       users/registrations#update
                         PUT    /users(.:format)                       users/registrations#update
                         DELETE /users(.:format)                       users/registrations#destroy
                         POST   /users(.:format)                       users/registrations#create
                   shows GET    /shows(.:format)                       shows#index
                         POST   /shows(.:format)                       shows#create
                new_show GET    /shows/new(.:format)                   shows#new
               edit_show GET    /shows/:id/edit(.:format)              shows#edit
                    show GET    /shows/:id(.:format)                   shows#show
                         PATCH  /shows/:id(.:format)                   shows#update
                         PUT    /shows/:id(.:format)                   shows#update
                         DELETE /shows/:id(.:format)                   shows#destroy
             store_items GET    /store_items(.:format)                 store_items#index
                         POST   /store_items(.:format)                 store_items#create
          new_store_item GET    /store_items/new(.:format)             store_items#new
         edit_store_item GET    /store_items/:id/edit(.:format)        store_items#edit
              store_item GET    /store_items/:id(.:format)             store_items#show
                         PATCH  /store_items/:id(.:format)             store_items#update
                         PUT    /store_items/:id(.:format)             store_items#update
                         DELETE /store_items/:id(.:format)             store_items#destroy
                teachers GET    /teachers(.:format)                    teachers#index
                         POST   /teachers(.:format)                    teachers#create
             new_teacher GET    /teachers/new(.:format)                teachers#new
            edit_teacher GET    /teachers/:id/edit(.:format)           teachers#edit
                 teacher GET    /teachers/:id(.:format)                teachers#show
                         PATCH  /teachers/:id(.:format)                teachers#update
                         PUT    /teachers/:id(.:format)                teachers#update
                         DELETE /teachers/:id(.:format)                teachers#destroy
                 lessons GET    /lessons(.:format)                     lessons#index
                         POST   /lessons(.:format)                     lessons#create
              new_lesson GET    /lessons/new(.:format)                 lessons#new
             edit_lesson GET    /lessons/:id/edit(.:format)            lessons#edit
                  lesson GET    /lessons/:id(.:format)                 lessons#show
                         PATCH  /lessons/:id(.:format)                 lessons#update
                         PUT    /lessons/:id(.:format)                 lessons#update
                         DELETE /lessons/:id(.:format)                 lessons#destroy
             enrollments GET    /enrollments(.:format)                 enrollments#index
                         POST   /enrollments(.:format)                 enrollments#create
          new_enrollment GET    /enrollments/new(.:format)             enrollments#new
         edit_enrollment GET    /enrollments/:id/edit(.:format)        enrollments#edit
              enrollment GET    /enrollments/:id(.:format)             enrollments#show
                         PATCH  /enrollments/:id(.:format)             enrollments#update
                         PUT    /enrollments/:id(.:format)             enrollments#update
                         DELETE /enrollments/:id(.:format)             enrollments#destroy
              gift_cards GET    /gift_cards(.:format)                  gift_cards#index
                         POST   /gift_cards(.:format)                  gift_cards#create
           new_gift_card GET    /gift_cards/new(.:format)              gift_cards#new
          edit_gift_card GET    /gift_cards/:id/edit(.:format)         gift_cards#edit
               gift_card GET    /gift_cards/:id(.:format)              gift_cards#show
                         PATCH  /gift_cards/:id(.:format)              gift_cards#update
                         PUT    /gift_cards/:id(.:format)              gift_cards#update
                         DELETE /gift_cards/:id(.:format)              gift_cards#destroy
      instructed_classes GET    /instructed_classes(.:format)          instructed_classes#index
                         POST   /instructed_classes(.:format)          instructed_classes#create
    new_instructed_class GET    /instructed_classes/new(.:format)      instructed_classes#new
   edit_instructed_class GET    /instructed_classes/:id/edit(.:format) instructed_classes#edit
        instructed_class GET    /instructed_classes/:id(.:format)      instructed_classes#show
                         PATCH  /instructed_classes/:id(.:format)      instructed_classes#update
                         PUT    /instructed_classes/:id(.:format)      instructed_classes#update
                         DELETE /instructed_classes/:id(.:format)      instructed_classes#destroy
              home_index GET    /home(.:format)                        home#index
                         POST   /home(.:format)                        home#create
                new_home GET    /home/new(.:format)                    home#new
               edit_home GET    /home/:id/edit(.:format)               home#edit
                    home GET    /home/:id(.:format)                    home#show
                         PATCH  /home/:id(.:format)                    home#update
                         PUT    /home/:id(.:format)                    home#update
                         DELETE /home/:id(.:format)                    home#destroy
                    root GET    /                                      home#index
