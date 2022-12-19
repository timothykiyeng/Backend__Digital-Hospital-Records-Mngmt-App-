class AddTestDateToMedicalHistories < ActiveRecord::Migration[7.0]
  def change
    add_column :medical_histories, :test_date, :string
  end
end
