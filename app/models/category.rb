class Category < ApplicationRecord
  has_many :sub_categories, dependent: :destroy
  has_many :products, through: :sub_categories
  has_many :posts

  validates :name, presence: true, inclusion: { in: ["Fashion", "Beauty & Wellness", "Food", "Home Decor"] }
end
