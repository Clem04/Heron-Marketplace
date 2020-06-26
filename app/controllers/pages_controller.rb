class PagesController < ApplicationController
  skip_before_action :ensure_user!
  before_action :authenticate_merchant!, only: [:dashboard, :inventory, :order]
  before_action :authenticate_admin!, only: [:invitations, :send_new_invitations]

  def home
  end

  def dashboard
    @merchant = current_merchant
  end

  def inventory
  end

  def order
  end

  def invitations  
  end

  def send_new_invitations
  end

end
