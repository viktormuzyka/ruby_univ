class Machine
  attr_accessor  :name, :standby, :work_time

  def initialize(name, standby,work_time)
    @name = name.to_s # name of machine
    @standby = standby.to_i # standby in hours
    @work_time = work_time.to_f # worked time in hours
  end
end

class Factory

  def initialize(machines )
    @machines_name = Array.new
    @machines_standby = Array.new
    @machines_work_time = Array.new
    machines.each { |item| @machines_name << item.name; @machines_standby << item.standby; @machines_work_time << item.work_time }
  end

  def get_total_standby
    @machines_array.each { |x| puts x.name }
  end

  def get_total_standby
    #sum all
  end

  def get_relative_standby_time_total
    #sum standby / (sum standby+sum worked)
  end

  def get_relative_standby_time_for_one_machine
    #sum standby / (sum standby+sum worked) for each
  end

end
first = Machine.new("BMW", 0, 120)
second = Machine.new("AUDI", 100, 20)
factory = Factory.new([ first, second ])
factory.get_total_standby
