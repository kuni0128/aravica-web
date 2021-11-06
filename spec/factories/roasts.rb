# == Schema Information
#
# Table name: roasts
#
#  id         :bigint           not null, primary key
#  depth      :integer          not null
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_roasts_on_name  (name) UNIQUE
#
FactoryBot.define do
  factory :roast do
    
  end
end
