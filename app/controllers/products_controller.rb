class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @products = @category.sub_categories.map do |sub_category|
      sub_category.products
    end
    raise
  end
end
