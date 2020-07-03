class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :user

  monetize :amount_cents
end
