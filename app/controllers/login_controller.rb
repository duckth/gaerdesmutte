class LoginController < ApplicationController
  before_action :redirect_if_logged_in
  before_action :redirect_if_development

  def index
  end

  private

  def redirect_if_logged_in
    redirect_to admin_interface_url if session[:userinfo].present?
  end

  def redirect_if_development
    redirect_to admin_interface_url if Rails.env.development?
  end
end
