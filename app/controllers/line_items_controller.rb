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
    if @line_item.save
      # This is where I should add 1 to cart icon and alert successfully added instead of redirecting to cart
      category = product.sub_category.category
      redirect_to category_product_path(category, product)
    else
      render :new
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
