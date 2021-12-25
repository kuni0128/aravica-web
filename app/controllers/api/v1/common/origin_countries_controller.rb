# frozen_string_literal: true

module Api::V1::Common
  class OriginCountriesController < ApplicationController
    include Api::ResultsSerializable

    def index
      render_results OriginCountry.all, serializer: ::Api::V1::Common::OriginCountries::IndexSerializer
    end
  end
end
