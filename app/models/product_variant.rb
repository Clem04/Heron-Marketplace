class ProductVariant < ApplicationRecord
  belongs_to :product
  has_many :sizes
end
