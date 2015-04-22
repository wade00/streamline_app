class Machine < ActiveRecord::Base
  belongs_to :dealership
  validates :stock_number, :make, :machine_model, :machine_type, presence: true
  validates :stock_number, :serial_number, uniqueness: true

  before_save :format_make_model_and_type

  private

  def format_make_model_and_type
    self.make = self.make.titleize
    self.machine_model = self.machine_model.upcase
    self.machine_type = self.machine_type.titleize
  end
end
