class Animal < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :nickname, presence: true, length: { maximum: 15 }
end
