class PagesController < ApplicationController
  skip_before_action :ensure_user!
  before_action :authenticate_merchant!, only: [:dashboard, :inventory, :order]

  def home
  end

  def dashboard
  end

  def inventory
  end

  def order
  end

end
