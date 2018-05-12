Rails.application.routes.draw do
  resources :events
  get 'events/:id/register', to: 'events#register', as: 'register_to_event'
  post 'events/:id/register', to: 'events#register_user', as: 'register_user'

  resources :users
end
