class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :machines, dependent: :destroy
  has_many :dealerships, dependent: :destroy

  validates :email, :company_name, uniqueness: true

  before_save :format_company_name

  # scope :mach_trader_inventory, -> { self.machines.where(mach_trader: true) }

  private

  def format_company_name
    self.company_name = self.company_name.titleize
  end

  # def self.mach_trader_inventory
  #   self.machines.where(mach_trader: true)
  # end

  # def self.equip_locator_inventory
  #   self.machines.where(equip_locator: true)
  # end

  # def self.equip_alley_inventory
  #   self.machines.where(equip_alley: true)
  # end
end
