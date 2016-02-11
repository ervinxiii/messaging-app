Rails.application.routes.draw do
  devise_for :users
  unauthenticated :user do
    root to: 'home#index'
  end

  authenticate :user do
    root to: 'home#dashboard', as: :dashboard_root
  end

  namespace :api do
    resources :users
  end
end
