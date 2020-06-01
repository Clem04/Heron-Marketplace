class RemoveSizeFromProductVariants < ActiveRecord::Migration[5.2]
  def change
    remove_reference :product_variants, :size, index: true, foreign_key: true
  end
end
