# == Schema Information
#
# Table name: user_registrations
#
#  id                   :bigint           not null, primary key
#  confirmation_sent_at :datetime         not null
#  confirmation_token   :string(255)      not null
#  confirmed_at         :datetime
#  email                :string(255)      not null
#  provider             :string(255)      default("email"), not null
#  uid                  :string(255)      default(""), not null
#  unconfirmed_email    :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_user_registrations_on_confirmation_token  (confirmation_token) UNIQUE
#  index_user_registrations_on_email               (email) UNIQUE
#  index_user_registrations_on_uid_and_provider    (uid,provider) UNIQUE
#  index_user_registrations_on_unconfirmed_email   (unconfirmed_email) UNIQUE
#
class User::Registration < ApplicationRecord
  extend Devise::Models
  devise :registerable, :confirmable
  include DeviseTokenAuth::Concerns::User
end
