class Listing < ActiveRecord::Base
  # enum websites: [ :machine_trader, :equip_alley, ... ]

  belongs_to :owner, foreign_key: :user_id, class_name: "User"
  belongs_to :machine
end
