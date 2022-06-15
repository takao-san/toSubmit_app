class Check < ApplicationRecord
  validates :product, presence: true, length: { in: 3..50 }, uniqueness: true
  validates :like ,presence: true
  validates :text ,presence: true
end
