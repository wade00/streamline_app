class Machine < ActiveRecord::Base
  belongs_to :owner, foreign_key: :user_id, class_name: "User"
  belongs_to :location, foreign_key: :dealership_id, class_name: "Dealership"
  has_many :listings, dependent: :destroy

  validates :stock_number, :make, :machine_model, :machine_type, presence: true
  validates :stock_number, :serial_number, uniqueness: { scope: :owner },
                                           allow_blank: true

  before_save :format_machine_categories

  private

  def format_machine_categories
    self.stock_number  = self.stock_number.upcase
    self.make          = self.make.titleize
    self.machine_model = self.machine_model.upcase
    self.machine_type  = self.machine_type.titleize
    self.serial_number = self.serial_number.upcase
  end

  def listing_outdated?
    if self.changed?
      self.current = false
    end
  end
end
