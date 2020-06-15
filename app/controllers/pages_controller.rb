class PagesController < ApplicationController
  skip_before_action :ensure_user!
  def home
  end
end
