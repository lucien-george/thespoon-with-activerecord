Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CRUD
  # CREATE, READ, UPDATE, DELETE
  # verb 'path', to: 'controller#action'
  # read all the restaurants
  # get '/restaurants', to: 'restaurants#index'
  # # read one restaurant
  # get '/restaurants/new', to: 'restaurants#new' # display the form
  # get '/restaurants/:id', to: 'restaurants#show'
  # # create a restaurant
  # post '/restaurants', to: 'restaurants#create'
  # # update a restaurant
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # patch '/restaurants/:id', to: 'restaurants#update'
  # # delete a restaurant
  # delete '/restaurants/:id', to: 'restaurants#destroy'
  resources :restaurants
end
