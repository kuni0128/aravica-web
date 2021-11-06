# frozen_string_literal: true

# == Schema Information
#
# Table name: regions
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_regions_on_name  (name) UNIQUE
#
require 'rails_helper'

RSpec.describe Region, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
