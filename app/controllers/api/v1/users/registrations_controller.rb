# frozen_string_literal: true

module Api::V1::Users
  class RegistrationsController < DeviseTokenAuth::RegistrationsController

    private

    def sign_up_params
      params.require(:registration).permit(:email)
    end
  end
end
