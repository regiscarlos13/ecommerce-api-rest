# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/v1/user'

  namespace :admin do
    namespace :v1 do
      get 'home' => 'home#index'
      resources :categories, except: %i[new]
      resources :coupons, except: %i[new]
      resources :users, except: %i[new]
      resources :system_requirements, except: %i[new]
    end
  end

  namespace :storefront do
    namespace :v1 do
    end
  end
end
