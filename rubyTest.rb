# # created a class called vehicle
class Vehicle

  def initialize(wheels = 4, year = 2000)
    @wheels = wheels
    @year=year
  end

  def wheels
    return @wheels
  end

  def year
    return @year
  end
end

class Car < Vehicle
end

class Tesla < Car
end

class Tata < Car
end

class Toyota < Car
end
