class Product < ApplicationRecord
  belongs_to :sub_category
  belongs_to :merchant
  has_one :category, through: :sub_category
end
