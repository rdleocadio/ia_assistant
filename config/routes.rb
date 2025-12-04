Rails.application.routes.draw do
  get 'chats/show'
  get 'chats/create'
  devise_for :users

  # Página principal
  root to: "pages#home"

  # Painel do usuário
  get "/dashboard", to: "pages#dashboard"


  # root "posts#index"

  resources :tasks, only:["index", "show"]
  resource :chats, only: [:show, :create]



  # Chats com IA
  resources :chats, only: [:index, :new, :create, :show] do
    resources :messages, only: [:create]
  end
end
