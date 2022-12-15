class CreateMedicalHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_histories do |t|
      t.string :diagnosis
      t.string :patient_id

      t.timestamps
    end
  end
end
