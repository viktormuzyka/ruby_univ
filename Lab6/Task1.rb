class Machine
  attr_reader  :name, :standby, :work_time
  public
  def initialize(name, standby,work_time)
    @name = name.to_s # name of machine
    @standby = standby.to_i # standby in hours
    @work_time = work_time.to_f # worked time in hours
  end
end
class Factory
  @@machines = Array.new
  public
  def initialize(machines = [])
    machines.each {|item| @@machines << item }
  end

  def get_total_standby
    @sum_standby = 0
    @@machines.each { |x| @sum_standby += x.standby }
    return  @sum_standby
  end

  def get_total_time
    @sum_time = 0
    @@machines.each { |x| @sum_time += x.standby + x.work_time }
    return  @sum_time
  end

  def get_machines_without_standby
    @all_time_worked_machines = Array.new
    @@machines.each { |x| @all_time_worked_machines << x unless x.standby!=0 }
    return  @all_time_worked_machines
  end

  def get_relative_standby_time_total
    get_total_time
    @sum_standby / @sum_time
  end

  def get_relative_standby_time_for_one_machine
    @relative_standby = Hash.new
    @@machines.each { |x| @relative_standby[x.name.to_sym] = x.standby / (x.standby+ x.work_time) }
    return  @relative_standby
  end

end
first = Machine.new("BMP1", 0, 120)
second = Machine.new("AUD2", 100, 20)
third = Machine.new("BRP3", 50, 70)
factory = Factory.new([first, second, third])

total_standby = factory.get_total_standby
printf("Total standby: #{total_standby}")

relative_standby = factory.get_relative_standby_time_total
printf("\nTotal relative standby/all time: #{relative_standby}")

relative_standby_for_everyone = factory.get_relative_standby_time_for_one_machine
printf("\nTotal relative for everyone standby/all time: #{relative_standby_for_everyone}")

full_time_machines = factory.get_machines_without_standby
printf("\nFull time worked machines: #{full_time_machines}")

