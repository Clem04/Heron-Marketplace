class Post < ApplicationRecord
  belongs_to :category
  has_many :photos
  has_many :post_labels
  has_many :labels, through: :post_labels

  validates :first_name, :last_name, :email, :location, :category_id, 
  :website, :labels, :instagram, :description, presence: true
end
