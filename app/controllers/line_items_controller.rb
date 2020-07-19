class LineItemsController < ApplicationController
  include CurrentCart
  # before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]

  # def index
  #   @line_items = LineItem.all
  # end

  # def show
  # end

  def new
    @line_item = LineItem.new
  end

  # def edit
  # end

  def create
    @category = Product.find(params[:line_item][:product_id]).category
    @product = Product.find(params[:line_item][:product_id])

    if params[:line_item][:product_variant_id].include? "out of stock"
      flash[:notice] = "Sorry, this size is not available"
      redirect_to category_product_path(@category, @product)
    elsif params[:line_item][:product_variant_id] != ""
      product_variant = ProductVariant.where(size: (params[:line_item][:product_variant_id]))
      @line_item = @cart.add_product(product_variant)
    else
      flash[:notice] = "Please, select a size"
      redirect_to category_product_path(@category, @product)
    end
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to cart_path
  end

  private

  # def set_line_item
  #   @line_item = LineItem.find(params[:id])
  # end

  # def line_item_params
  #   params.require(:line_item).permit(:product_id)
  # end
end
