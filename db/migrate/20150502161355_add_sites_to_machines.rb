class AddSitesToMachines < ActiveRecord::Migration
  def change
    add_column :machines, :mach_trader, :boolean, default: false
    add_column :machines, :equip_locator, :boolean, default: false
    add_column :machines, :equip_alley, :boolean, default: false
  end
end
