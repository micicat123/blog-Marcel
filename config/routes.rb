Rails.application.routes.draw do
  resources :news
  resources :posta
  resources :posts

  root to: 'posta#index'
end
