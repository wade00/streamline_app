class CreateDealerships < ActiveRecord::Migration
  def change
    create_table :dealerships do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :equipment_alley_account

      t.timestamps null: false
    end
  end
end
