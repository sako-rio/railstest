Rails.application.routes.draw do
  get 'users/home'

  match '/mail_send', to: 'users#mail_send', via: 'post'

  root to: 'items#index'
  resources :flows
  resources :requirements
  resources :treatments
  resources :concepts
  resources :items
  resources :richrds
  get 'treatments/roger' => 'treatments#roger'
  get 'applications' => 'applications#index'
  post 'applications/confirm' => 'applications#confirm'
  post 'applications/thanks' => 'applications#thanks'
end
