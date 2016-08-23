Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :student do
    resource :profile, only: [:show, :edit, :update]

    resources :challenges, only: [:index, :show] do
      resources :quests, only: [:new, :create], controller: 'challenges/quests'
    end

    resources :quests, only: [:index, :show] do
      member do
        patch :submit
      end

      resources :questions, only: [:show] do
        resources :efforts, only: [:create]
      end
    end
  end

  namespace :teacher do
    resource :profile, only: [:show, :edit, :update]

    resources :challenges

    resources :quests, only: [:index, :show] do
      member do
        patch :approve
        patch :decline
      end

      resources :efforts, only: [:index] do
        member do
          patch :approve
          patch :decline
        end
      end
    end
  end
end
