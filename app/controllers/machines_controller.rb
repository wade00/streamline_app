class MachinesController < ApplicationController
  before_action :set_machine, only: [:edit, :update, :destroy]

  def index
    @machines = current_user.machines
  end

  def new
    @machine = Machine.new
  end

  def edit
    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.owner = current_user

    respond_to do |format|
      if @machine.save
        format.html { redirect_to edit_machine_path(@machine), notice: "#{@machine.stock_number} was successfully created." }
        format.json { render :show, status: :created, location: @machine }
      else
        format.html { render :new }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @machine.update(machine_params)
        format.html { redirect_to machines_path, notice: "#{@machine.stock_number} was successfully updated." }
        format.json { render :show, status: :ok, location: @machine }
      else
        format.html { render :edit }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @machine.destroy
    respond_to do |format|
      format.html { redirect_to machines_url, notice: 'Machine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_machine
      @machine = Machine.find(params[:id])
    end

    def machine_params
      params.require(:machine).permit(:stock_number, :year, :make, :machine_model, :machine_type,
        :serial_number, :hours, :price, :dealership_id, :description)
    end
end
