class DealershipsController < ApplicationController
  before_action :set_dealership, only: [:edit, :update, :destroy]

  def index
    @dealerships = Dealership.all
  end

  def new
    @dealership = Dealership.new
  end

  def edit
  end

  def create
    @dealership = Dealership.new(dealership_params)
    @dealership.owner = current_user

    respond_to do |format|
      if @dealership.save
        format.html { redirect_to edit_registration_path(current_user),
                      notice: 'Dealership was successfully created.' }
        format.json { render :edit, status: :created, location: @dealership }
      else
        format.html { render :new }
        format.json { render json: @dealership.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dealership.update(dealership_params)
        format.html { redirect_to edit_registration_path(current_user),
                      notice: 'Dealership was successfully updated.' }
        format.json { render :edit, status: :ok, location: @dealership }
      else
        format.html { render :edit }
        format.json { render json: @dealership.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dealership.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Dealership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_dealership
      @dealership = Dealership.find(params[:id])
    end

    def dealership_params
      params.require(:dealership).permit(:address, :city, :state, :zip, :phone, :equipment_alley_account)
    end
end
