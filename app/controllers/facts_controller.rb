class FactsController < ApplicationController
  def index
    @facts = Fact.all
  end

  def random
    @fact = Fact.all.sample
  end
end
