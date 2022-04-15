# frozen_string_literal: true

module Api::V1::Users::Auth
  class RegistrationsController < DeviseTokenAuth::RegistrationsController

    private

    def sign_up_params
      params.permit(:email, :password, :password_confirmation, :nickname, :image)
    end
  end
end
