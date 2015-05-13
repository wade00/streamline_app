class MachinesController < ApplicationController
  before_action :set_machine, only: [:edit, :update, :destroy]
  responders :flash

  def index
    machines = current_user.machines
    if params[:search]
      @machines = machines.search(params[:search])
    elsif params[:sort]
      @machines = machines.order(params[:sort])
    else
      @machines = machines.order("stock_number DESC")
    end
  end

  def new
    @machine = Machine.new
  end

  def edit
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.owner = current_user

    flash[:notice] if @machine.save
    respond_with(@machine, location: machines_url)
  end

  def update
    @machine.listings_outdated?
    flash[:notice] if @machine.update(machine_params)
    respond_with(@machine, location: machines_url)
  end

  def destroy
    @machine.destroy
    flash[:notice]
    respond_with(@machine, location: machines_url)
  end

  private
    def set_machine
      @machine = Machine.find(params[:id])
    end

    def machine_params
      params.require(:machine).permit(:stock_number, :year, :make, :machine_model, :machine_type,
        :serial_number, :hours, :price, :dealership_id, :description)
    end

    def interpolation_options
      { resource_name: "stock number #{@machine.stock_number}" }
    end
end
