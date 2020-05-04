class Label < ApplicationRecord
  has_many :post_labels
  # has_many :products, through: :labels_products
  has_many :posts, through: :post_labels
  has_many :labels, through: :post_labels
end
