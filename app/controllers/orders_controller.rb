class OrdersController < ApplicationController

	def create
		order_item = Cart.find(params[:order_item_id])
	    order  = Order.create!(order_item: order_item, order_item_sku: order_item.sku, amount: order_item.price, state: 'pending', user: current_user)

	    session = Stripe::Checkout::Session.create(
	    payment_method_types: ['card'],
	    line_items: [{
	      name: order_item.sku,
	      images: [order_item.photo_url],
	      amount: order_item.price_cents,
	      currency: 'eur',
	      quantity: 1
	    }],
	    success_url: order_url(order),
	    cancel_url: order_url(order)
	    )

	    order.update(checkout_session_id: session.id)
	    redirect_to new_order_payment_path(order)
	end

end
