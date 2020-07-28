class MerchantsController < ApplicationController
  before_action :authenticate_merchant!,  only: [:inventory]
  def show
    @merchant = Merchant.find(params[:id])
  end

  def inventory
    if params[:search].present?
      search
    else
      @products = current_merchant.products
    end
    @products.each do |product|
      @category = product.category
    end
  end

  private

  def merchant_params
  	params.require(:merchant).permit(:name, :public_email, :location, :description,
  		:comment, :facebook, :instagram, :website, :picture_1, :picture_2, :picture_3, :picture_4,
  		:email)
  end

  def search
    @keyword = params[:search]
    @products = current_merchant.products.where("lower(#{:sku}) LIKE ?", "%#{@keyword.downcase}%")
  end
end
