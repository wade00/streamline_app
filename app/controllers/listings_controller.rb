class ListingsController < ApplicationController
  before_action :set_listing, only: [:edit, :update, :destroy]

  def index
    @equip_alley_listings   = outdated_listings(0)
    @equip_locator_listings = outdated_listings(1)
    @mach_trader_listings   = outdated_listings(2)
  end

  def new
    @machine = Machine.find(params[:machine_id])
    @listing = Listing.new
  end

  def edit
    @machine = Machine.find(params[:machine_id])
    @listings = @machine.listings
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.owner = current_user

    flash[:notice] if @listing.save
    respond_with(@listing, location: machines_path)
  end

  def update
    flash[:notice] if @listing.update(listing_params)
    respond_with(@listing, location: machines_path)
  end

  def destroy
    @listing.destroy
    flash[:notice]
    respond_with(@listing, location: machines_path)
  end

  def equip_alley
    @equip_alley_listings = outdated_listings(0)
  end

  def equip_locator
    @equip_locator_listings = outdated_listings(1)
  end

  def mach_trader
    @mach_trader_listings = outdated_listings(2)
  end

  private
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def listing_params
      params.require(:listing).permit(:website, :machine_id, :current)
    end

    def outdated_listings(site_number)
      outdated_listings = current_user.listings.where(current: false)
      return outdated_listings.where(website: site_number)
    end
end
