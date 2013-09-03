HN::Application.routes.draw do
 devise_for :users
 root 'main#index'
 resources :main
end
