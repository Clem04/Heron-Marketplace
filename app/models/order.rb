class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :user
  belongs_to :line_item

  monetize :amount_cents
end
