# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                  :bigint           not null, primary key
#  image               :string(255)      not null
#  nickname            :string(255)      not null
#  remember_created_at :datetime
#  tokens              :text(65535)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class User < ActiveRecord::Base
  extend Devise::Models
  devise :rememberable
  # include DeviseTokenAuth::Concerns::User

  has_one :database_authentication
  has_one :password_reset_request
end
