# frozen_string_literal: true

RSpec.configure do |config|
  config.add_setting :committee_options
  config.committee_options = {
    schema_path: Rails.root.join('api/bundles/openapi-bundle-v1.json').to_s,
    query_hash_key: 'rack.request.query_hash',
    parse_response_by_content_type: true,
    prefix: '/api/v1',
  }
  config.include Committee::Rails::Test::Methods, type: :request
end
