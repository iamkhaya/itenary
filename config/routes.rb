Rails.application.routes.draw do
  resources :users
  resources :providers
  resources :activities
	resources :categories
  resources :home
  resources :backend_admins

  root 'home#index'
end
