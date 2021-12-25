# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Api::V1::Common::OriginCountriesController, type: :request do
  describe 'GET /api/v1/common/origin_countries' do
    it_behaves_like 'an api 200'
  end
end
