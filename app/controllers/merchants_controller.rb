class MerchantsController < ApplicationController
  def show
    @merchant = Merchant.find(params[:id])
  end

  private

  def merchant_params
  	params.require(:merchant).permit(:name, :public_email, :location, :description, 
  		:comment, :facebook, :instagram, :website, :picture_1, :picture_2, :picture_3, :picture_4, 
  		:email)
  end
end
