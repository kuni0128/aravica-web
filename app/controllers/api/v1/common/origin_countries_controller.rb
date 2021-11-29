# frozen_string_literal: true

module Api::V1::Common
  class OriginCountriesController < ApplicationController
    def index
      render json: OriginCountry.all, each_serializer: ::Api::V1::Common::OriginCountries::IndexSerializer
    end
  end
end
