class Post < ApplicationRecord
  has_many :photos
  has_many :categories
  has_many :post_labels
  has_many :labels, through: :post_labels
end
