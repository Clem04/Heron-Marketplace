# class Merchants::InvitationsController < Devise::InvitationsController
#   def new
#     @merchant = Merchant.new
#   end

#   def create
#   	@merchant = Merchant.new(post_params)
# 	@merchant.invite!
#   	if @merchant.save
#   		redirect_to root_path
#   	else
#   		render :new
#   	end
#   end

# 	private

#   def post_params
#     params.require(:post).permit(:first_name, :last_name, :email, :location,
#       :category_id, :website, :description, :instagram,
#       :facebook, :photos)
#   end
# end

