Rails.application.routes.draw do
  resources :events
  get 'events/:id/register', to: 'events#register', as: 'register_to_event'

  resources :users
end
