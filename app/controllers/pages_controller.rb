class PagesController < ApplicationController
  skip_before_action :ensure_user!
  # before_action :authenticate_merchant!, only: [:dashboard]

  def home
  end

  def dashboard
  end
end
