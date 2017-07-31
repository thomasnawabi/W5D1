Rails.application.routes.draw do
  resources :users, only: [ :create ]
  resources :goalcomments
  resource :session
end
