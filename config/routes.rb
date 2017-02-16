Rails.application.routes.draw do

    resources :activities
		resources :categories
    resources :home
    resources :backend_admins

    root 'home#index'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
