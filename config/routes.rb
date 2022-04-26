Rails.application.routes.draw do
  resources :projects
  devise_for :users, controllers: { sessions: "users/sessions" } 
  root "projects#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
