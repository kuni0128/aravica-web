# frozen_string_literal: true

RSpec.configure do |config|
  config.include RSpec::RequestDescriber, type: :request
end
