class Label < ApplicationRecord
  has_many :post_labels
  has_many :label_products
  has_many :products, through: :label_products
  has_many :posts, through: :post_labels
  has_many :labels, through: :post_labels
end
