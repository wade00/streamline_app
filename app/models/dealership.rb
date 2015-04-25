class Dealership < ActiveRecord::Base
  belongs_to :owner, foreign_key: :user_id, class_name: "User"
  has_many :machines
end
