# frozen_string_literal: true

# == Schema Information
#
# Table name: user_database_authentications
#
#  id                 :bigint           not null, primary key
#  email              :string(255)      not null
#  encrypted_password :string(255)      default(""), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint
#
# Indexes
#
#  index_user_database_authentications_on_email    (email) UNIQUE
#  index_user_database_authentications_on_user_id  (user_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe User::DatabaseAuthentication, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
