class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.boolean :equip_alley, default: false
      t.boolean :equip_locator, default: false
      t.boolean :mach_trader, default: false
      t.references :user, index: true
      t.references :machine, index: true

      t.timestamps null: false
    end
    add_foreign_key :listings, :users
    add_foreign_key :listings, :machines
  end
end
