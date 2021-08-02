Rails.application.routes.draw do
  resources :materials
  #new task step 3b: the create method is included with the resources macro, see tasks controller for next step
  resources :tasks
  # new project step 3b: the create method is included with the resources macro, see projects controller for next step
  # delete project step 2a: the destroy method is included with the resources macro, see projects controller for next step.
  resources :projects
  # SIGNUP step 3b: a POST request to the /users resource routes to the create method in the users controller
  resources :users, only: [:create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # LOGIN step 3b: a POST request to the /login resource routes to the login method in the users controller.
  post "/login", to: "users#login"
  get "/me", to: "users#me"
end
