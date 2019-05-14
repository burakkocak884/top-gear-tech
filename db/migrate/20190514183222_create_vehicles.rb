class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.integer :mileage
      t.string :license_plate
      t.string :color
      t.integer :customer_id
      t.timestamps
    end
  end
end
