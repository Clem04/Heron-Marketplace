class Merchant < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :category, through: :products
end
