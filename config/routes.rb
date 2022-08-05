Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  resources :publics, only: [:index]
  resources :users do
    resources :foods, except: [:edit,]
    resources :recipes, except: [:edit] do
      resources :lists, only: [:new, :create, :destroy]
      resources :shops, only: [:index]
    end
  end  
end
