class PagesController < ApplicationController
  skip_before_action :ensure_user!
  before_action :authenticate_merchant!, only: [:dashboard, :inventory, :order, :account]
  before_action :authenticate_admin!, only: [:invitations, :send_new_invitations]

  def home
  end

  def dashboard
  end

  def inventory
  end

  def order
  end

  def invitations  
  end

  def send_new_invitations
  end

  def account
    @merchant = current_merchant
  end

end
