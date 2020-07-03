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
  end

  def create
    @product = Product.new(product_params)
    @product.merchant = current_merchant
    photos_exist
    if @product.save
      product_variant_creation
      category = @product.sub_category.category
      redirect_to category_product_path(category, @product)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :sub_category_id, :price_cents, :sku, label_ids: [])
  end

  def product_variant_creation
    if params[:product][:size] == 'One Size'
      one_size = ProductVariant.create(size: "One Size", product_id: @product.id)
    elsif params[:product][:size] == 'Diffrent Sizes'
      xsmall = ProductVariant.create(size: "XS", stock_qty: params[:product][:stock_XS], product_id: @product.id)
      small = ProductVariant.create(size: "S", stock_qty: params[:product][:stock_S], product_id: @product.id)
      medium = ProductVariant.create(size: "M", stock_qty: params[:product][:stock_M], product_id: @product.id)
      large = ProductVariant.create(size: "L", stock_qty: params[:product][:stock_L], product_id: @product.id)
      xlarge = ProductVariant.create(size: "XL", stock_qty: params[:product][:stock_XL], product_id: @product.id)
    end
  end

  def photos_exist
    if params[:product][:photo_1]
      @product.photos = [params[:product][:photo_1]]
    elsif params[:product][:photo_2]
      @product.photos = [params[:product][:photo_1], params[:product][:photo_2]]
    elsif params[:product][:photo_3]
      @product.photos = [params[:product][:photo_1], params[:product][:photo_2], params[:product][:photo_3]]
    elsif params[:product][:photo_4]
      @product.photos = [params[:product][:photo_1], params[:product][:photo_2], params[:product][:photo_3], params[:product][:photo_4]]
    end
  end
end
