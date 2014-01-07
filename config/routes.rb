Pqp::Application.routes.draw do

  resources :courses, path: "disciplinas"

  root 'static#index'
  get "index", to: 'static#index'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

end
