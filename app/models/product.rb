class Product < ApplicationRecord
  belongs_to :sub_category
  belongs_to :merchant
end
