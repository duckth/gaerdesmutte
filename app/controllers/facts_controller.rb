class FactsController < ApplicationController
  include Secured

  def index
    @facts = Fact.all
    @user = session[:userinfo]
  end
end
