class ApplicationController < ActionController::Base
  before_action :ensure_user!, only: :home
end
