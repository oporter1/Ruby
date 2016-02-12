require "rspec"
require_relative "rubyTest.rb"

describe Vehicle do
# created a class called vehicle
  it "creating a class called vehicle" do
    expect {Vehicle.class}.to_not raise_error
  end
end

#Task: Create a class called Car, and create an object called myCar which is of class Car
describe Car do
  it "creating a class called car" do
    expect{Car.class}.to_not raise_error
  end

#Story: As a programmer, I can tell how many wheels a car has; default is four.
#Task: Initialize the car to have four wheels, then create a method to return the number of wheels.
  it "defaulting wheels to four" do
    car=Car.new(4, 2000)
    expect(car.wheels).to be_a Integer
    expect(car.wheels).to eq(4)
  end

  # Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
  # Task: Make model year part of the initialization.
  it "defining the year of each car" do
    car=Car.new(4, 2000)
    expect(car.year).to be_a Integer
    expect(car.year).to eq(2000)

  end
end

#Story: As a programmer, I can make a Tesla car.
#Task: Create an object called myTesla which is of class Tesla which inherits from class Car .
describe Tesla do
  it "creating a class Tesla" do
    expect{Tesla.class}.to_not raise_error
  end

  it "creating object myTesla" do
    mytesla=Tesla.new(4,1990)

  end

  it "can speed my Teslas up by 10 per acceleration" do
    mytesla=Tesla.new(4,1990)
    expect(mytesla.speed).to be 0
    mytesla.accelerate
    expect(mytesla.speed).to be 10

  end
end

#Story: As a programmer, I can make a Tata car.
#Task: Create an object called myTata which is of class Tata.

describe Tata do
  it "creating a class Tata" do
    expect{Tata.class}.to_not raise_error
  end

  it "creating object myTata" do
    mytata=Tata.new(4,2000)


  end
end

#Story: As a programmer, I can make a Toyota car.
#Task: Create an object called myToyota which is of class Toyota.
describe Toyota do
  it "creating a class Toyota" do
    expect{Toyota.class}.to_not raise_error
  end

  it "creating object mytoyota" do
    mytoyota=Toyota.new(4,1980)


  end
end
