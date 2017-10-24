class FormulationsController < ApplicationController
  before_action :set_formulation, only: [:show, :edit, :update, :destroy]

  # GET /formulations
  # GET /formulations.json
  def index
    @formulations = Formulation.all
  end

  # GET /formulations/1
  # GET /formulations/1.json
  def show
  end

  # GET /formulations/new
  def new
    @formulation = Formulation.new
  end

  # GET /formulations/1/edit
  def edit
  end

  def formulations_for_select
    formulation = Formulation.find_by_id(params[:formulation][:id])
    @formulation_ingredients = formulation.formulation_ingredients
  end

  # POST /formulations
  # POST /formulations.json
  def create
    @formulation = Formulation.new(formulation_params)

    respond_to do |format|
      if @formulation.save
        format.html { redirect_to @formulation, notice: 'Formulation was successfully created.' }
        format.json { render :show, status: :created, location: @formulation }
      else
        format.html { render :new }
        format.json { render json: @formulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formulations/1
  # PATCH/PUT /formulations/1.json
  def update
    respond_to do |format|
      if @formulation.update(formulation_params)
        format.html { redirect_to @formulation, notice: 'Formulation was successfully updated.' }
        format.json { render :show, status: :ok, location: @formulation }
      else
        format.html { render :edit }
        format.json { render json: @formulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formulations/1
  # DELETE /formulations/1.json
  def destroy
    @formulation.destroy
    respond_to do |format|
      format.html { redirect_to formulations_url, notice: 'Formulation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulation
      @formulation = Formulation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulation_params
      params.require(:formulation).permit(:name)
    end
end
