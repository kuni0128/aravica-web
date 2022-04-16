# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                  :bigint           not null, primary key
#  image               :string(255)      not null
#  nickname            :string(255)      not null
#  provider            :string(255)      default("email"), not null
#  remember_created_at :datetime
#  tokens              :text(65535)
#  uid                 :string(255)      default(""), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_users_on_uid_and_provider  (uid,provider) UNIQUE
#
class User < ActiveRecord::Base
  extend Devise::Models
  devise :rememberable
  #:registerable
  include DeviseTokenAuth::Concerns::User

  has_one :database_authentication
  has_one :password_reset_request
end
