Rails.application.routes.draw do
  get 'welcomes/rake'

  get 'welcomes/routes'

  get 'welcomes/index'
  root 'welcomes#index'
  devise_for :managers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
