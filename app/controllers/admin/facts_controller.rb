class Admin::FactsController < SecuredController
  def new
    @fact = Fact.new
    @fact.species = Species.find(params[:species_id])
  end

  def create
    @fact = Fact.new(fact_params)

    if @fact.save
      respond_to do |format|
        format.html { redirect_to species_path(@fact.species), notice: 'Fact was successfully created.' }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
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
    @fact.destroy

    respond_to do |format|
      format.html { redirect_to species_path(@fact.species), notice: 'Fact was successfully destroyed.' }
      format.turbo_stream
    end
  end

  private

  def fact_params
    params.require(:fact).permit(:fact, :species_id)
  end
end
