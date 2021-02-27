Rails.application.routes.draw do
  devise_for :users
  resources :news
  resources :posta
  resources :posts

  root to: 'posts#index'
end
