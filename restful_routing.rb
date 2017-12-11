                  Prefix Verb   URI Pattern                            Controller#Action
          teachers_index GET    /teachers/index(.:format)              teachers#index
            teachers_new GET    /teachers/new(.:format)                teachers#new
         teachers_create GET    /teachers/create(.:format)             teachers#create
           teachers_show GET    /teachers/show(.:format)               teachers#show
           teachers_edit GET    /teachers/edit(.:format)               teachers#edit
         teachers_update GET    /teachers/update(.:format)             teachers#update
        teachers_destroy GET    /teachers/destroy(.:format)            teachers#destroy
       store_items_index GET    /store_items/index(.:format)           store_items#index
         store_items_new GET    /store_items/new(.:format)             store_items#new
      store_items_create GET    /store_items/create(.:format)          store_items#create
        store_items_show GET    /store_items/show(.:format)            store_items#show
        store_items_edit GET    /store_items/edit(.:format)            store_items#edit
      store_items_update GET    /store_items/update(.:format)          store_items#update
     store_items_destroy GET    /store_items/destroy(.:format)         store_items#destroy
             shows_index GET    /shows/index(.:format)                 shows#index
               shows_new GET    /shows/new(.:format)                   shows#new
            shows_create GET    /shows/create(.:format)                shows#create
              shows_show GET    /shows/show(.:format)                  shows#show
              shows_edit GET    /shows/edit(.:format)                  shows#edit
            shows_update GET    /shows/update(.:format)                shows#update
           shows_destroy GET    /shows/destroy(.:format)               shows#destroy
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
