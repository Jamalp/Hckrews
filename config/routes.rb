HN::Application.routes.draw do

  devise_for :site_users
#  devise_for :users
  #devise_for :users, :controllers => {:passwords => "users/passwords", :registrations => "users/registrations", :sessions => "users/sessions"}
 root 'main#index'
end
