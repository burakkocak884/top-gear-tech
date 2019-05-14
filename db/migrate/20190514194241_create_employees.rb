class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.integer :experience
      t.string :skills
      t.integer :garage_id

      t.timestamps
    end
  end
end
