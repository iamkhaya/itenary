Rails.application.routes.draw do
  namespace :providers do
    resources :bank_details
  end
  namespace :providers do
    resources :opening_times
  end
  namespace :providers do
    resources :branches
  end
  resources :addresses
  namespace :providers do
    resources :payment_types
  end
  resources :providers
  resources :users
  resources :activities
  resources :categories
  resources :home
  resources :backend_admins

  root 'home#index'
end
