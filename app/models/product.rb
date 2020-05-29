class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  has_many_attached :photos
  belongs_to :sub_category
  belongs_to :merchant
  has_one :category, through: :sub_category
  has_many :label_products
  has_many :labels, through: :label_products
  has_many :line_items

  private

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
