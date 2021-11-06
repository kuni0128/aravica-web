# == Schema Information
#
# Table name: varieties
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_varieties_on_name  (name) UNIQUE
#
FactoryBot.define do
  factory :variety do
    
  end
end
