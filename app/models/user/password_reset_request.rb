# == Schema Information
#
# Table name: user_password_reset_requests
#
#  id                     :bigint           not null, primary key
#  allow_password_change  :boolean          default(FALSE)
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_id                :bigint
#
# Indexes
#
#  index_user_password_reset_requests_on_reset_password_token  (reset_password_token) UNIQUE
#  index_user_password_reset_requests_on_user_id               (user_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class User::PasswordResetRequest < ApplicationRecord
  devise :recoverable

  belongs_to :user
end
