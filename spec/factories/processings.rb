# == Schema Information
#
# Table name: processings
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_processings_on_name  (name) UNIQUE
#
FactoryBot.define do
  factory :processing do
    
  end
end
