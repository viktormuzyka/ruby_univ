class MachineController < ApplicationController

  def index
    @machines = Machine.all
  end

  def show
    @machine = Machine.find(params[:id])
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)

    if @machine.save
      redirect_to @machine
    else
      render :new
    end
  end

  def edit
    @machine = Machine.find(params[:id])
  end

  def update
    @machine = Machine.find(params[:id])

    if @machine.update(machine_params)
      redirect_to @machine
    else
      render :edit
    end
  end

  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy

    redirect_to root_path
  end

  def total_standby
    all = Machine.all

    @standby_time = 0
    all.each { |x| @standby_time += x.standby }
    return  @standby_time
  end

  def total_time
    all = Machine.all

    @sum_time = 0
    all.each { |x| @sum_time += x.standby + x.work_time }
    return  @sum_time
  end

  def without_standby
    all = Machine.all

    @all_time_worked_machines = Array.new
    all.each { |x| @all_time_worked_machines << x unless x.standby != 0 }
    return  @all_time_worked_machines
  end

  def sum_relative_standby_total
    standby = total_standby
    all_time = total_time

    @rel_sum = (standby.to_f / all_time)
  end

  def relative_standby_total
    all = Machine.all

    @relative_standby = Hash.new
    all.each { |x| @relative_standby[x.name.to_sym] = x.standby.to_f / (x.standby + x.work_time) }
    return  @relative_standby
  end

  def machine_params
    params.require(:machine).permit(:name, :standby, :work_time)
  end

  public :index

end
