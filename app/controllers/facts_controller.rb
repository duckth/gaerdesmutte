class FactsController < ApplicationController
  def index
    @facts = Fact.all
  end
end
