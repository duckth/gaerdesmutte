class Admin::InterfaceController < SecuredController
  def index
    @facts = Fact.all
  end
end
