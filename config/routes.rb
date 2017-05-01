Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories
  
  devise_for :users
  resources :projects do
    resources :comments

	 resources :comments do
    resources :replies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   end
   end
  root 'projects#index'
 
end