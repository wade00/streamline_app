class MachinesController < ApplicationController
  before_action :set_machine, only: [:edit, :update, :destroy]
  responders :flash

  def index
    if params[:search]
      @machines = current_user.machines.search(params[:search])
    elsif params[:sort]
      @machines = current_user.machines.order(params[:sort])
    else
      @machines = current_user.machines.order("stock_number DESC")
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
      { resource_name: "Stock number #{@machine.stock_number}" }
    end
end
