class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :machines, dependent: :destroy
  has_many :dealerships, dependent: :destroy

  validates :email, :company_name, uniqueness: true

  before_save :format_company_name

  # This might not be necessary
  # scope :mach_trader_inventory, -> { self.machines.where(mach_trader: true) }

  private

  def format_company_name
    self.company_name = self.company_name.titleize
  end

end
