class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  has_many_attached :photos
  belongs_to :sub_category
  belongs_to :merchant
  has_one :category, through: :sub_category
  has_many :label_products
  has_many :labels, through: :label_products
  has_many :line_items
  has_many :product_variants

  validates :sub_category_id, presence: true
  validates :labels, inclusion: { in: Label.all }
  validates :name, :description, :photos, :price, presence: true
  validates :description, length: { minimum: 20 }
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}

  private

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
