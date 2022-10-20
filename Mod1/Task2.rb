class House
  attr_accessor :id, :number, :square, :floor, :count_rooms, :street, :building_type, :lifetime

  @@id = 1

  def initialize(number, square, floor, count_rooms, street, building_type="Lok", lifetime=100)
    @id = @@id
    @@id = @@id + 1
    @number = number
    @square = square
    @floor = floor
    @count_rooms = count_rooms
    @street = street
    @building_type = building_type
    @lifetime = lifetime
  end

  def to_s
    "ID: " + @id.to_s + "\tNumber: " + @number.to_s + "\tSquare: " + @square.to_s + "\tFloor: " + @floor.to_s + "\tRooms: " + \
            + @count_rooms.to_s +  "\tStreet: " + @street + "\tType: " + @building_type + "\tLifetime: " + @lifetime.to_s
  end

end

class House_controller

  def self.by_rooms_count(array_of_objects, count_rooms)
    array_of_objects.each do |object|
      if object.count_rooms == count_rooms
        puts object.to_s
      end
    end
  end

  def self.by_rooms_count_with_floor(array_of_objects, count_rooms, start_floor, end_floor)
    array_of_objects.each do |object|
      if object.count_rooms == count_rooms && object.floor >= start_floor && object.floor <= end_floor
        puts object.to_s
      end
    end
  end

  def self.by_square(array_of_objects, square)
    array_of_objects.each do |object|
      if object.square > square
        puts object.to_s
      end
    end
  end

end

house_1 = House.new(1, 100, 3, 5, "CoolStreet", "Nice", 190)
house_2 = House.new(2, 200, 4, 2, "NotCoolStreet", "VeryNice", 80)
house_3 = House.new(3, 150, 3, 3, "ColaStreet", "Good", 70)
house_4 = House.new(4, 120, 1, 2, "HelpStreet", "NotBad")
house_5 = House.new(5,  55, 5, 6, "HonorStreet", "BadBad", 200)

array = [house_1, house_2, house_3, house_4, house_5]

puts "House with 5 rooms:"
House_controller.by_rooms_count(array, 5)
puts "\nHouse with 2 rooms in 1-2 floor:"
House_controller.by_rooms_count_with_floor(array, 2, 1, 2)
puts "\nHouse with square greater 80:"
House_controller.by_square(array, 80)
