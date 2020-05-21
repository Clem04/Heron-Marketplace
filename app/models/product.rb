class Product < ApplicationRecord
  has_many_attached :photos
  belongs_to :sub_category
  belongs_to :merchant
  has_one :category, through: :sub_category
  has_many :label_products
  has_many :labels, through: :label_products
end
