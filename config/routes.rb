Rails.application.routes.draw do
  get 'home/index'
  # devise_for :users
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  devise_scope :user do
    root :to => "devise/sessions#new"
  end
   


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
