class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :vin
      t.integer :year
      t.string :make
      t.string :model
      t.string :color
      t.integer :customer_id

      t.timestamps
    end
  end
end
