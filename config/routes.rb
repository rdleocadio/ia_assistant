Rails.application.routes.draw do
  get 'chats/show'
  get 'chats/create'
  devise_for :users

  # Página principal
  root to: "pages#home"

  # Painel do usuário
  get "/dashboard", to: "pages#dashboard"


  # root "posts#index"

  resources :tasks, only:["index", "show"] do
    resources :chats, only: [:create]
  end

  # Chats com IA
  resources :chats, only: [:show, :new, :create, :index] do
    resources :messages, only: [:create]
  end
end
