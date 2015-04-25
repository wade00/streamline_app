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
      t.text :description
      t.references :user, index: true
      t.references :dealership, index: true

      t.timestamps null: false
    end
    add_foreign_key :machines, :users
    add_foreign_key :machines, :dealerships
  end
end
