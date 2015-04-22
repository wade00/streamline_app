class Dealership < ActiveRecord::Base
  belongs_to :user
  has_many :machines
end
