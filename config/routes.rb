# frozen_string_literal: true

Rails.application.routes.draw do
  resources :celebs, except: %i[new edit]
  resources :sports, except: %i[new edit]
  resources :weathers, except: %i[new edit]
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
end
