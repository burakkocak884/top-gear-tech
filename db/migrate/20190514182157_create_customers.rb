class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :standing_balance
      t.integer :garage_id

      t.timestamps
    end
  end
end
