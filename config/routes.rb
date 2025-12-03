Rails.application.routes.draw do
  devise_for :users

  # Página principal
  root to: "pages#home"

  # Painel do usuário
  get "/dashboard", to: "pages#dashboard"

  # Tasks
  resources :tasks, only: ["index", "show"]

  # Chats com IA
  resources :chats, only: ["index", "new", "create", "show"] do
    resources :messages, only: ["create"]
  end
end
