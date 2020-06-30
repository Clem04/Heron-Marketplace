class OrdersController < ApplicationController
	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		line_item = LineItem.find(params[:line_item_id])
		order = Order.create!(line_item: line_item, line_item_sku: line_item.product.sku, price_cents: line_item.product.price_cents, status: 'pending')
	end

end
