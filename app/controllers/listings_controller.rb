class ListingsController < ApplicationController
  before_action :set_listing, only: [:edit, :update, :destroy]

  def index
    @listings = current_user.listings
    @equip_alley_listings = @listings.where(equip_alley: true)
    @equip_locator_listings = @listings.where(equip_locator: true)
    @mach_trader_listings = @listings.where(mach_trader: true)
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

  private
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def listing_params
      params.require(:listing).permit(:equip_alley, :equip_locator, :mach_trader)
    end

    def set_machine
      @machine = Machine.find_by(machine_id: params[:listing][:machine_id])
    end
end
