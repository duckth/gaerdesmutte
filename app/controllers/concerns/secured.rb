module Secured
  extend ActiveSupport::Concern

  User = Data.define(
    :name,
    :email,
    :picture
  )

  included do
    before_action :logged_in_using_omniauth?
    before_action :set_current_user
  end

  def logged_in_using_omniauth?
    redirect_to "/" unless session[:userinfo].present?
  end

  def set_current_user
    @current_user = User.new(
      session[:userinfo]["nickname"],
      session[:userinfo]["name"],
      session[:userinfo]["picture"]
    )
  end
end
