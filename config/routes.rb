# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, format: :json do
    namespace :v1 do
      namespace :common do
        resources :origin_countries, only: [:index]
      end
    end
  end
end
