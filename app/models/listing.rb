class Listing < ActiveRecord::Base
  enum website: [ :equipment_alley, :equipment_locator, :machinery_trader ]

  belongs_to :owner, foreign_key: :user_id, class_name: "User"
  belongs_to :machine
  validates :machine_id, uniqueness: { scope: :website }
end
