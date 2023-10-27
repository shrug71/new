Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  namespace :vehicle_module do
    resources :vehicles, only: [:index, :show, :create, :update, :destroy]
    resources :cars, only: [:index, :show, :create, :update, :destroy]
    resources :trucks, only: [:index, :show, :create, :update, :destroy]
    resources :motorcycles, only: [:index, :show, :create, :update, :destroy]
    resources :report_content_options, only: [:index, :show, :create, :update, :destroy]
    resources :posts, only: [:index, :show, :create, :update, :destroy]
    resources :report_contents,only: [:index, :show, :create, :update, :destroy]
  end
end
