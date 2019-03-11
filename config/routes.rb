# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :merit_badges, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  patch '/change-rank' => 'users#changerank'
  patch '/change-name' => 'users#changename'

  # *******remove 'get users' for production*******
  get '/users' => 'users#index'
end
