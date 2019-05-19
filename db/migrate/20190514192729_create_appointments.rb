class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :description
      t.string :date
      t.integer :garage_id
      t.integer :customer_id
      t.integer :vehicle_id

      t.timestamps
    end
  end
end
