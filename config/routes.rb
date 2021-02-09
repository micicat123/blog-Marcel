Rails.application.routes.draw do
  resources :posta
  resources :posts

  root to: 'posta#index'
end
