Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :categories, except: [:index, :show]
    resources :subcategories, except: [:index, :show]
    resources :products, except: [:index, :show]
  end
  resources :categories, only: [:index, :show]
  resources :subcategories, only: [:index, :show]
  resources :products, only: [:index, :show]
end
