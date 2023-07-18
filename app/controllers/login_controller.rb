class LoginController < ApplicationController
  before_action :redirect_if_logged_in
  
  def index
  end

  private

  def redirect_if_logged_in
    redirect_to admin_interface_url if session[:userinfo].present?
  end
end
