class Merchant < ApplicationRecord
  has_many :products
  has_many :labels, -> { distinct }, through: :products
  has_many :category, through: :products
end
