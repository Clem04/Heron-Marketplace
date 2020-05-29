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
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product)
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
