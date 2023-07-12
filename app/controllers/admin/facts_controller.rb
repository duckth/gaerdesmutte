class Admin::FactsController < SecuredController
  def new
    @fact = Fact.new
  end

  def create
    @fact = Fact.new(fact_params)

    if @fact.save
      redirect_to admin_interface_url, notice: "Fact was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
end
