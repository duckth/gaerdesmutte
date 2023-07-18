class Admin::InterfaceController < SecuredController
  def index
    @species = Species.all
  end
end
