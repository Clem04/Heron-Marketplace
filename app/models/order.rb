class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :line_item
end
