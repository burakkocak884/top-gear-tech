class CreateGarages < ActiveRecord::Migration[5.2]
  def change
    create_table :garages do |t|
      t.string :name
      t.string :location
      t.boolean :tire_service
      t.boolean :service_any_vehicle
      t.integer :user_id

      t.timestamps
    end
  end
end
