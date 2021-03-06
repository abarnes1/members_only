Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', passwords: 'passwords' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'

  resources :posts, only: [:index, :new, :create, :destroy]
end
