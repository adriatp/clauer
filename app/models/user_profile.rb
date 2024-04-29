class UserProfile < ApplicationRecord
  belongs_to :user_account

  validates :username, presence: true
end
