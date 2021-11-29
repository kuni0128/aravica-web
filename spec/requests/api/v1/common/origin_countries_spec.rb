# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Api::V1::Common::OriginCountriesController, type: :request do
  describe "GET /api/v1/common/origin_countries" do
    subject { get api_v1_common_origin_countries_path }

    it "return http status 200" do
      subject
      expect(response).to have_http_status(200)
    end
  end
end
