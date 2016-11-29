Rails.application.routes.draw do
  root to: 'items#index'
  resources :flows
  resources :requirements
  resources :treatments
  resources :concepts
  resources :items
  # match '/mail_send', to: 'users#mail_send', via: 'post'
  get 'applications' => 'applications#index'
  post 'applications/confirm' => 'applications#confirm'
  post 'applications/thanks' => 'applications#thanks'
end
