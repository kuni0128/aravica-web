# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User::Registration', at: 'api/v1/user/user_registrations', controllers: {
    registrations: 'api/v1/user/user_registrations'
  }

  namespace :api, format: :json do
    namespace :v1 do
      namespace :common do
        resources :origin_countries, only: [:index]
      end
    end
  end
end
