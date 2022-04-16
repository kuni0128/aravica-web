# == Schema Information
#
# Table name: user_registrations
#
#  id                   :bigint           not null, primary key
#  confirmation_sent_at :datetime         not null
#  confirmation_token   :string(255)      not null
#  confirmed_at         :datetime
#  email                :string(255)      not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_user_registrations_on_confirmation_token  (confirmation_token) UNIQUE
#  index_user_registrations_on_email               (email) UNIQUE
#
require 'rails_helper'

RSpec.describe User::Registration, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
