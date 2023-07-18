class Admin::SpeciesController < SecuredController
  def show
    @species = Species.find(params[:id])
  end
end
