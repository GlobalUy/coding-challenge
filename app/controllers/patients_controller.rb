class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy, :build_pdf]


  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
    @formulations = Formulation.all
  end

  def edit
  end

  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to build_pdf_path(@patient, format: :pdf) }
      else
        @formulations = Formulation.all
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_ingredients
    @patient = Patient.new

  end

  def confirm_ingredients
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to build_pdf_path(@patient, format: :pdf)
    else
      redirect_to request.referer
    end
  end

  def build_pdf
    respond_to do |format|
      format.pdf do
        pdf = ReportPdf.new(@patient)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:name, :surname, :address, :birthdate,
       patients_ingredients_attributes: [:ingredient_id,:percentage])
    end
end
