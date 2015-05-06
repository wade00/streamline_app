class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :website
      t.boolean :current, default: true
      t.references :user, index: true
      t.references :machine, index: true

      t.timestamps null: false
    end
    add_foreign_key :listings, :users
    add_foreign_key :listings, :machines
  end
end
