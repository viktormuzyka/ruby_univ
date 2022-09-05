Point = Struct.new(:x, :y)

$points_array = Array.new

$points_array.push((Point.new 62,  300),
                   (Point.new 105, 303),
                   (Point.new 159, 304),
                   (Point.new 217, 303),
                   (Point.new 257, 302),
                   (Point.new 320, 292),
                   (Point.new 373, 280),
                   (Point.new 421, 234),
                   (Point.new 439, 187),
                   (Point.new 449, 144),
                   (Point.new 430, 107),
                   (Point.new 403,  78),
                   (Point.new 354,  65),
                   (Point.new 298,  54),
                   (Point.new 208,  49),
                   (Point.new 169,  42),
                   (Point.new 113,  45),
                   (Point.new 79,   67),
                   (Point.new 66,  123),
                   (Point.new 59,  156),
                   (Point.new 65,  198),
                   (Point.new 104, 202),
                   (Point.new 147, 220),
                   (Point.new 153, 242),
                   (Point.new 131, 249),
                   (Point.new 87,  256),
                   (Point.new 71,  267))
def square(array)
  result = 0
  for i in 0...array.length do
    unless i == array.length-1
      result += (array[i].x + array[i + 1].x) * (array[i].y - array[i + 1].y)
    else
      result += (array[i].x + array[0].x) * (array[i].y - array[0].y)
    end
  end

  0.5 * (result).abs
end

puts "Square is: #{square($points_array)}"
