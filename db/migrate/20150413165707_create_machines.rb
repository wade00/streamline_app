class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :stock_number
      t.string :year
      t.string :make
      t.string :machine_model
      t.string :machine_type
      t.string :serial_number
      t.string :hours
      t.string :price
      t.string :dealership
      t.text :description

      t.timestamps null: false
    end
  end
end
