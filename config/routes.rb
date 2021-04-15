Rails.application.routes.draw do
 
# resources :modifications
# resources :students
  get "/students", to: "students#index"
  get "/students/new", to: "students#new"
  post "/students", to: "students#create"
  get "/students/:id", to: "students#show"
  get "/students/:id/edit", to: "students#edit"
  patch "/students/:id", to: "students#update"
  delete "students/:id", to: "students#destroy"

  # resources :users
  get "/users", to: "users#index"
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"
  get "/users/:id/edit", to: "users#edit"
  patch "/users/:id", to: "users#update"
  delete "users/:id", to: "users#destroy"

  # resources :transportations
  get "/transportations", to: "transportations#index"
  get "/transportations/new", to: "transportations#new"
  post "/transportations", to: "transportations#create"
  get "/transportations/:id", to: "transportations#show"
  get "/transportations/:id/edit", to: "transportations#edit"
  patch "/transportations/:id", to: "transportations#update"
  delete "transportations/:id", to: "transportations#destroy"

  # resources :modifications
  get "/modifications", to: "modifications#index"
  get "/modifications/new", to: "modifications#new"
  post "/modifications", to: "modifications#create"
  get "/modifications/:id", to: "modifications#show"
  get "/modifications/:id/edit", to: "modifications#edit"
  patch "/modifications/:id", to: "modifications#update"
  delete "modifications/:id", to: "modifications#destroy"
  
  # Login
  post "/login", to: "users#login"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
