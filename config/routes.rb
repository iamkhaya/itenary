Rails.application.routes.draw do
  # get 'home/index'
  root "home#index"
  match ':controller(/:action(:/id))', :via => :get

  resources :admin_home


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
