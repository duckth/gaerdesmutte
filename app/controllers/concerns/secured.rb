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
    return if Rails.env.development?

    redirect_to "/" unless session[:userinfo].present?
  end

  def set_current_user
    return set_mock_user if Rails.env.development?

    @current_user = User.new(
      session[:userinfo]["nickname"],
      session[:userinfo]["name"],
      session[:userinfo]["picture"]
    )
  end

  def set_mock_user
    @current_user = User.new("testuser", "test", nil)
  end
end
