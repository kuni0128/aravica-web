# frozen_string_literal: true

module Api::V1::Common
  class OriginCountriesController < ApplicationController
    def index
      render json: OriginCountry.all
    end
  end
end
