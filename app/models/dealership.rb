class Dealership < ActiveRecord::Base
  belongs_to :owner, foreign_key: :user_id, class_name: "User"
  has_many :machines

  validates :address, :city, :state, :zip, :phone, presence: true
  validates :address, uniqueness: true
  validates :state, format: { with: /(^[a-zA-Z]{2}\s*$)/,
                            message: "should be 2 letters only, please" }
  validates :zip,   format: { with: /(^\d{5}\s*$)/,
                            message: "should be 5 digits only (no letters, please)" }
  validates :phone, format: { with: /(^\d{10}\s*$)/,
                            message: "should be 10 digits only (no letters, parentheses, hyphens or country codes, please)" }

  before_save :format_dealership_categories

  private

  def format_dealership_categories
    self.address = self.address.titleize
    self.city = self.city.titleize
    self.state = self.state.upcase
  end
end
