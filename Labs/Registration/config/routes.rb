Rails.application.routes.draw do
  resources :users
  get 'session/login'
  post 'session/create'
  get 'session/logout'
  get 'session/acc'

  get 'welcome/index'
  root 'welcome#acc'

  get 'calc/input'
  get 'calc/view'

  get '/signup',  :to => 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
