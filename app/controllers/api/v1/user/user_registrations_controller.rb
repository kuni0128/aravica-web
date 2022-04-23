# frozen_string_literal: true

module Api::V1::User
  class UserRegistrationsController < DeviseTokenAuth::RegistrationsController

    private

    def sign_up_params
      params.require(:user_registration).permit(:email)
    end
  end
end
