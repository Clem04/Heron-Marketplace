class PaymentsController < ApplicationController

	def new
		@order = current_user.carts.where(status: 'pending').find(params[:cart_id])
	end
	
end
