class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :start_date
      t.string :end_date
      t.string :notes
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
