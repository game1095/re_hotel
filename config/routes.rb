Rails.application.routes.draw do
  get 'welcomes/index'
  root 'welcomes#index'
  devise_for :managers
  resources :employees
  resources :rooms do
    resources :customers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
