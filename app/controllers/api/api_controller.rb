class Api::ApiController < ApplicationController
  skip_before_action :logged_in_using_omniauth?
  skip_before_action :set_current_user

  around_action :switch_locale

  def switch_locale(&)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &)
  end

  def default_url_options
    {locale: I18n.locale}
  end
end
