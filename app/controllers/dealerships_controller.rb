class DealershipsController < ApplicationController
  before_action :set_dealership, only: [:edit, :update, :destroy]
  responders :flash

  def index
    @dealerships = current_user.dealerships
  end

  def new
    @dealership = Dealership.new
  end

  def edit
  end

  def create
    @dealership = Dealership.new(dealership_params)
    @dealership.owner = current_user

    flash[:notice] if @dealership.save
    respond_with(@dealership, location: edit_registration_path(current_user))
  end

  def update
    flash[:notice]
    respond_with(@dealership, location: edit_registration_path(current_user))
  end

  def destroy
    @dealership.destroy
    flash[:notice]
    respond_with(@dealership, location: edit_registration_path(current_user))
  end

  private
    def set_dealership
      @dealership = Dealership.find(params[:id])
    end

    def dealership_params
      params.require(:dealership).permit(:address, :city, :state, :zip, :phone, :equipment_alley_account)
    end

    def interpolation_options
      { resource_name: "#{@dealership.city} dealership" }
    end
end
