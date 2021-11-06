# == Schema Information
#
# Table name: origin_countries
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  region_id  :bigint           not null
#
# Indexes
#
#  index_origin_countries_on_name       (name) UNIQUE
#  index_origin_countries_on_region_id  (region_id)
#
# Foreign Keys
#
#  fk_rails_...  (region_id => regions.id)
#
class OriginCountry < ApplicationRecord
end
