# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/users/auth'
  namespace :api, format: :json do
    namespace :v1 do
      namespace :common do
        resources :origin_countries, only: [:index]
      end
    end
  end
end
