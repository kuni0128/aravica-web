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
class User::Registration < ApplicationRecord
  devise :confirmable
end
