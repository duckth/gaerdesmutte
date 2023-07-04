class FactsController < ApplicationController
  def index
    @facts = Fact.all
  end

  def random
    @fact = Fact.all.sample
    @photo = @fact.photos.sample
    @with_image = params[:image] == 'true'
    @with_species_info = params[:species_info] == 'true'
  end
end
