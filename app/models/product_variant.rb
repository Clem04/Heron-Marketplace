class ProductVariant < ApplicationRecord
  belongs_to :products
  has_many :sizes
end
