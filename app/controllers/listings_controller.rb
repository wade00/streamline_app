class ListingsController < ApplicationController
  before_action :set_listing, only: [:edit, :update, :destroy]

  def index
    @equip_alley_listings   = outdated_listings(0)
    @equip_locator_listings = outdated_listings(1)
    @mach_trader_listings   = outdated_listings(2)
  end

  def new
    @listing = Listing.new
  end

  def edit
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.owner = current_user
    @listing.machine = @machine

    flash[:notice] if @listing.save
    respond_with(@listing, location: edit_machine_path(@machine))
  end

  def update
    flash[:notice] if @listing.update(listing_params)
    respond_with(@listing, location: edit_machine_path(@machine))
  end

  def destroy
    @listing.destroy
    flash[:notice]
    respond_with(@listing, location: edit_machine_path(@machine))
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
      params.require(:listing).permit(:equip_alley, :equip_locator, :mach_trader)
    end

    def outdated_listings(site_number)
      @outdated_listings = current_user.listings.where(current: false)
      return @outdated_listings.where(website: site_number)
    end
end
