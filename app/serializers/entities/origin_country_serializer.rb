# frozen_string_literal: true

module Entities
  class OriginCountrySerializer < ActiveModel::Serializer
    attributes %i[id name]
  end
end
