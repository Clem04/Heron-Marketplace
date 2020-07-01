class OrdersController < ApplicationController
	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		line_item = LineItem.find(params[:line_item_id])
		@order = Order.create!(line_item: line_item, line_item_sku: line_item.product.sku, price_cents: line_item.product.price_cents, status: 'pending')

		session = Stripe::Checkout::Session.create(
	      payment_method_types: ['card'],
	      line_items: [{
	        name: line_item.product_variant.product.name,
	        sku: line_item.product_variant.product.sku,
	        images: [line_item.product_variant.product.photos],
	        amount: line_item.product_variant.product.price_cents,
	        currency: 'CAD',
	        quantity: 1
	      }],
	      success_url: order_url(order),
	      cancel_url: order_url(order)
	    )

    	order.update(checkout_session_id: session.id)
    	redirect_to  new_order_payment_path(order)
	end

end
