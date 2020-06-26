module ApplicationHelper
  # def cart_count_over_one
  #   return total_cart_items if total_cart_items > 0
  # end

  def stripe_button_link
	  stripe_url = "https://connect.stripe.com/express/oauth/authorize"
	  redirect_uri = stripe_connect_url
	  client_id = ENV["STRIPE_CLIENT_ID"]

	  "#{stripe_url}?redirect_uri=#{redirect_uri}&client_id=#{client_id}"
  end

  def total_cart_items
    total = @cart.line_items.map(&:quantity).sum
    return total if total > 0
  end
end
