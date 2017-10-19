Rails.application.routes.draw do
  get 'productos/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :marcas
  resources :productos

  root 'inicio#index'
end
