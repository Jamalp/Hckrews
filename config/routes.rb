HN::Application.routes.draw do
 root 'main#index'
 devise_for :users
 resources :main
end
