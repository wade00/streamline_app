class Machine < ActiveRecord::Base
  belongs_to :dealership
  validates :stock_number, :make, :model, :serial_number, presence: true
  validates :stock_number, :serial_number, uniqueness: true

  before_save :format_make_model_and_type

  private

  def format_make_model_and_type
    self.make.titleize
    self.machine_model.uppercase
    self.machine_type.titleize
  end
end
