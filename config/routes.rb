Rails.application.routes.draw do
  root to: 'items#index'
  resources :flows
  resources :requirements
  resources :treatments
  resources :concepts
  resources :items
  get 'applications' => 'applications#index'
  post 'applications/confirm' => 'applications#confirm'
  post 'applications/thanks' => 'applications#thanks'
end
