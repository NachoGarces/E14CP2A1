Rails.application.routes.draw do
  root 'companies#index'
  resources :companies do
    resources :employees, only: [:create, :destroy]
  end
  resources :areas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
