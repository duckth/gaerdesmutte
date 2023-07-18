class Admin::FactsController < SecuredController
  def new
    @fact = Fact.new
  end

  def edit
    @fact = Fact.find(params[:id])
  end

  def update
    @fact = Fact.find(params[:id])

    if @fact.update(fact_params)
      redirect_to species_path(@fact.species), notice: 'Fact was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @fact = Fact.find(params[:id])
    puts 'hur dur'
  end

  def create
    @fact = Fact.new(fact_params)

    if @fact.save
      redirect_to admin_interface_url, notice: 'Fact was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def fact_params
    params.require(:fact).permit(:fact)
  end
end
