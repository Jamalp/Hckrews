HN::Application.routes.draw do
 root 'main#index', as: "Main"
 resources :main
end
