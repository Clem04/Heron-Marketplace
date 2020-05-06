class Post < ApplicationRecord
  belongs_to :categories
  has_many :photos
  has_many :post_labels
  has_many :labels, through: :post_labels
end
