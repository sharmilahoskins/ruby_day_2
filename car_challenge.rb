#Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

class Vehicle
  def initialize(type)
    @my_vehicle = type
  end
  def type
    @my_vehicle
  end
end

 my_vehicle = Vehicle.new("Honda")

 # Story: As a programmer, I can make a car.
 # Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.

class Car
  def initialize(type)
    @my_car = type
  end
  def type
    @my_car
  end
end

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

class Car
  def initialize(type)
    @my_car = type
    @wheels = "4 wheels"
  end
  def type
    @my_car
  end
  def wheels
    @wheels
  end
end

# Story: As a programmer, I can make a Tesla car.
# Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.

class Tesla < Car
end
my_new_car = Tesla.new("van")
my_new_car.wheels

# Story: As a programmer, I can make a Tata car.

class Tata < Car
end
my_new_tata = Tata.new("sedan")

# Story: As a programmer, I can make a Toyota car.

class Toyota < Vehicle
  def initialize type
    super type
    @make= "Toyota"
  end
  def make
    @make
  end
end

new_toyota=Toyota.new("truck")

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.

class Vehicle
  def initialize model
    @model = model
    @year = "2017"
  end
  def model
    @model
  end
  def year
    @year
  end
end

# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?

class Vehicle
  def initialize (model, lights_on)
    @lights_on = lights_on
    @model = model
    @year = "2017"
  end
  def model
    @model
  end
  def year
    @year
  end
  def lights_on
    @lights_on
  end
end

new_car = Vehicle.new("pilot", true)

# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.

class Vehicle
  def initialize (model)
    @lights = "off"
    @model = model
    @year = "2017"
  end
  def model
    @model
  end
  def year
    @year
  end
  def lights_on
    if @lights == "off"
      @lights = "on"
    else @lights = "off"
    end
  end
end

# Story: As a programmer, I can signal left and right. Turn signals starts off.

class Vehicle
  def initialize (model, signals)
    @lights = "off"
    @signal = signals
    @model = model
    @year = "2017"
  end
  def model
    @model
  end
  def year
    @year
  end
  def lights_on
    if @lights == "off"
      @lights = "on"
    else @lights = "off"
    end
  end
  def signal_right
    @signal = "right"
  end
  def signal
    @signal
  end
  def signal_left
    @signal = "left"
  end
end

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.

class Vehicle
  def initialize (model)
    @speed = 0
    @lights = "off"
    @signal = 0
    @model = model
    @year = "2017"
  end
  def model
    @model
  end
  def year
    @year
  end
  def lights_on
    if @lights == "off"
      @lights = "on"
    else @lights = "off"
    end
  end
  def signal_right
    @signal = "right"
  end
  def signal
    @signal
  end
  def signal_left
    @signal = "left"
  end
  def speed_up
    @speed = @speed + 10
  end
  def brake
    @speed = @speed - 7
  end
  def info
    "The Car is a " + @year + " " + @model + " going at speed " + @speed.to_s + "mph"
  end
end

# Car array stuff
class Vehicle
  def initialize (model, year)
    @speed = 0
    @model = model
    @year = year
  end
  def model
    @model
  end
  def year
    @year
  end
  def speed_up
    @speed = @speed + 10
  end
  def brake
    @speed = @speed - 7
  end
  def info
    "The Car is a " + @year + " " + @model + " going at speed " + @speed.to_s + "mph"
  end
end

car_array = []

car_1 = Vehicle.new("honda", "2107")
# car_array.push(car_1)

car_2 = Vehicle.new("ford", "2005")
# car_array.push(car_2)

car_3 = Vehicle.new("lexus", "2013")
# car_array.push(car_1, car_2, car_3)

car_4 = Vehicle.new("lexus", "2103")
car_5 = Vehicle.new("honda", "2005")
car_array.push(car_1, car_2, car_3, car_4, car_5)


# car_array.sort {|a,b| a.model <=> b.year}
car_array.sort_by {|vehicle| vehicle.model}

# Story: As a programmer, I can sort my collection of cars based on model and then year.
# Hint: Find out how the spaceship operator can help you with an array.

 car_array.sort_by{|a| [a.model, a.year]}
