class FactsController < ApplicationController
  include Secured

  def index
    @facts = Fact.all
  end
end
