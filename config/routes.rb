Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

   


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
