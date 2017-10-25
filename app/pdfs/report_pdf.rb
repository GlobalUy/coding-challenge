class ReportPdf < Prawn::Document
  def initialize(patient)
    super()
    @patient = patient
    header
    table_content
  end

  def header
    text "Patient: #{@patient.fullname}", size: 15, style: :bold
    text "Birthdate: #{@patient.birthdate}",size: 15, style: :bold
    text "Address: #{@patient.address}",size: 15, style: :bold
  end

  def table_content
    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
    # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
    # Then I set the table column widths
    table product_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [40, 300, 200]
    end
  end

  def product_rows
    [['#', 'Ingredient', '%']] +
      @patient.patients_ingredients.map do |pi|
      [pi.id, pi.ingredient.name, pi.percentage]
    end
  end



end
