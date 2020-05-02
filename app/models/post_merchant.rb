class PostMerchant < ApplicationRecord
  belongs_to :merchant
  belongs_to :category
  belongs_to :label
end
