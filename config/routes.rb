Colchonet::Application.routes.draw do
  resources :rooms do
    resources :reviews, only: [:create, :update], module: :rooms
  end
  resources :rooms
  resources :users
  resource :confirmation, only: [:show]
  resource :user_sessions, only: [:create, :new, :destroy]
  LOCALES = /en|pt\-BR/
  def index
    resources :users
  end
# Rails.application.routes.draw do
  scope "(:locale)", locale: LOCALES do
    resources :rooms
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/:locale' => 'home#index', locale: LOCALES
  root 'home#index'
end
