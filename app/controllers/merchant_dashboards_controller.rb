class MerchantDashboardsController < ApplicationController
  def show
  	@dashboard = Dashboard.find(params[:id])
  	@merchant = Merchant.find(params[:merchant_id])
  end

  private
  def method_name
  	
  end
end
