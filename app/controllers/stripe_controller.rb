class StripeController < ApplicationController
	def connect
		response = HTTParty.post("https://connect.stripe.com/oauth/token",
	      query: {
	        client_secret: ENV["STRIPE_SECRET_KEY"],
	        code: params[:code],
	        grant_type: "authorization_code"
	      }
	    )
	end
end
