class FactsController < ApplicationController
  def index
    @facts = Fact.all
  end

  def random
    @fact = Fact.all.sample
    @photo = @fact.photos.sample
  end
end
