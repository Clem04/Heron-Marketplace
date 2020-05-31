class ProductsController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :create]
  def index
    @category = Category.find(params[:category_id])
    @products = @category.products.map do |product|
      product
    end
  end

  def show
    @product = Product.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def new
    @product = Product.new
    @product.product_variants.build
  end

  def create
    @product = Product.new(product_params)
    @product.merchant = current_merchant
    if @product.save
      raise
      category = @product.sub_category.category
      redirect_to category_product_path(category, @product)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :sub_category_id, :price, photos: [], label_ids: [], product_variants_attributes:[:size_ids])
  end
end
