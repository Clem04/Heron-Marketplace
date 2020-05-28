class ApplicationController < ActionController::Base
  before_action :ensure_user!, only: :home
  include CurrentCart
  before_action :set_cart
end
