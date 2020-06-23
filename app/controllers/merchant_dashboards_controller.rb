class MerchantDashboardsController < ApplicationController
  def show
  	@dashboard = Dashboard.find(params[:id])
  	@merchant = Merchant.find(params[:merchant_id])
  end
end
