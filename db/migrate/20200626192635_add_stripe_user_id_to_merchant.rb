class AddStripeUserIdToMerchant < ActiveRecord::Migration[5.2]
  def change
  	add_column :merchants, :stripe_user_id, :string
  end
end
