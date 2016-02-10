# created a class called vehicle
class Vehicle

#storing the default value of wheel also storing the empty value of year
  def initialize(wheels,year)
    @wheels = wheels
    @year=year
    @turn_lights_on_off=false
    @speed=0
  end

# return the user input of year
  def year
    return @year
  end

# return the user input of wheels if it over rides the initalized default
  def wheels
    return @wheels=4
  end

# method to turn the lights of the car on and off
  def lightsOn
    @turn_lights_on_off=true
  end
#changing the value of turn_lights_on_off to false
  def lightsOff
    @turn_lights_on_off=false
  end
#spitting out the result of the above two methods depending on if it is true or false
  def lightsOn?
    @turn_lights_on_off
  end
end

# created an object within class vehicle called myVehicle
myVehicle=Vehicle.new(3, 1990)
puts myVehicle.year
puts myVehicle.wheels

 # created a class called car that inherits the class of vehicle
class Car < Vehicle
end

# created an object within class car called Mycar
myCar= Car.new(4, 2000)
puts myCar.year
puts myCar.wheels

#created a class of Tesla that inherits from Car
class Tesla < Car
  #speeding up the car by 10 mph
  def speedUpCar
    @speed=@speed + 10
  end
  #slowing down the car by 10mph
  def slowDownCar
    @speed=@speed-7
  end
end

 #created an object called my Tesla which is of class Telsa which inherits from car.
myTesla = Tesla.new(6, 1998)
puts myTesla.class
puts myTesla.year
puts myTesla.wheels
myTesla.lightsOn
puts myTesla.lightsOn?
puts myTesla.slowDownCar

#created a class of Tata that inherits from Car
class Tata < Car
  #speeding up the car by 10 mph
  def speedUpCar
    @speed=@speed + 2
  end
  #slowing down the car by 10mph
  def slowDownCar
    @speed=@speed-1.25
  end
end


 #created an object called myTata which is of class Tata which inherits from car.
myTata = Tata.new(4,1945)
puts myTata.year
puts myTata.wheels
myTata.lightsOn
puts myTata.lightsOn?
puts myTata.speedUpCar

 #created a class of Toyota that inherits from Car
class Toyota < Car
  #speeding up the car by 10 mph
  def speedUpCar
    @speed=@speed + 7
  end
  #slowing down the car by 10mph
  def slowDownCar
    @speed=@speed-5
  end
end

 #created an object called myToyota which is of class Toyota which inherits from car.
myToyota = Toyota.new(4,2002)
puts myToyota.year
puts myToyota.wheels
myToyota.lightsOff
puts myToyota.lightsOn?
puts myToyota.speedUpCar
