Rails.application.routes.draw do
  resources :todo_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#homepage'

  resources :posts

  resources :pages

  get "/pages/:page" => "pages#show"


end
