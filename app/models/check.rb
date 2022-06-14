class Check < ApplicationRecord
  validates :product, presence: true, length: { in: 5..50 }
  validates :like ,presence: true
  validates :text ,presence: true
end
