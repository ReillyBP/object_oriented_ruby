class WheelThing
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < WheelThing
  def honk_horn
    puts "Beeeeeeep!"
end
def fuel
  puts "Diesel"
  end
  def make
    puts "Mercedes"
  end
  def model
    puts "S Class"
  end
end

class Bike
  def ring_bell
    puts "Ring ring!"
  end
  def speed
    puts "3 speed"
  end
  def type
    puts "Mountain"
  end
  def weight
    puts "lightweight"
  end
end

car = Car.new
bike = Bike.new

p car
p bike
p bike.weight
p car.model
