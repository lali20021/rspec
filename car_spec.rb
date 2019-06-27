require 'rspec'
require_relative 'car'


# Story:	As a programmer, I can make a vehicle. Hint:	Test that Vehicle.new does not raise any errors.
describe "Vehicle" do
    it "instantiate a new instance of Vehicle" do
        expect{Vehicle.new(1905)}.to_not raise_error
    end
# Story:	As a programmer, I can tell which model year a vehicle is from. Model years never change. Hint:	Make model year part of the initialization.
    it "can tell which model year a vehicle is from" do
        vehicle = Vehicle.new(1905)
        expect(vehicle.model_year).to eq(1905)
    end
# Story:	As a programmer, I can turn on and off the lights on a given Vehicle. Hint:	Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
    it "has a method to toggle lights" do
        vehicle = Vehicle.new(1905)
        expect(vehicle.lights).to eq(false)
        vehicle.sets_lights()
        expect(vehicle.lights).to eq(true)
    end
# Story: As a programmer, I can signal left and right. Turn signals starts off.
    it "has a method to signal left and right signals" do
        vehicle = Vehicle.new(1905)
        expect(vehicle.signal_left).to eq(false)
        expect(vehicle.signal_right).to eq(false)
    end
# Story:	As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
    it "new vehicles have a speed" do
        vehicle = Vehicle.new(1905)
        expect(vehicle.speed).to eq(0)
    end
end

# Story:	As a programmer, I can make a car. Hint:	Test that creating an instance of the new class does not raise any errors.

describe "Car" do
    it "create a new class of car withour error" do
        expect{Car.new(1900)}.to_not raise_error
    end

# Story:	As a programmer, I can tell how many wheels a car has; default is four. Hint:	initialize the car to have four wheels, then create a method to return the number of wheels.
    it "new cars are created with four wheels" do
        car = Car.new(1900)
        expect(car.wheels).to eq(4)
    end

    # Story:	As a programmer, I can honk the horn. Hint:	When I call honk_horn, I get a "BEEP!".
    it "check if i get a beep when i honk a horn" do
        car =  Car.new(1900)
        expect(car.honk_horn).to eq("BEEP!")
    end

end

# Story:	As a programmer, I can make a Toyota car. Hint:	Test that class Toyota which inherits from class Car can be created.
describe "Toyota" do
    it  "instantiates new toyota that inherits from class car" do
        expect{Toyota.new(1900)}.to_not raise_error
    end
# Story:	As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".
    it "overwrites honk_horn to return 'whoop'" do
        toyota = Toyota.new(1900)
        expect(toyota.honk_horn).to eq("whoop")
    end
end



# Story:	As a programmer, I can make a Tata car.
describe "Tata" do
    it "instantiates new Tata" do
        expect{Tata.new(1900)}.to_not raise_error
    end

# Story:	As a programmer, I can honk the horn of a Tata car - "beep".
    it "can honk the horn of tata and return beep" do
        tata = Tata.new(1900)
        expect(tata.honk_horn).to eq("beep")
    end
end

# Story:	As a programmer, I can make a Tesla car.

describe "Tesla" do
    it "instantiates a new Tesla that inherits from Car" do
        expect{Tesla.new(1900)}.to_not raise_error
    end
# Story:	As a programmer, I can determine if the lights are on or off. Lights start in the off position.
    it "determines if the lights are on or off" do
        tesla = Tesla.new(1900)
        expect(tesla.lights).to eq(false)

    end
# Story:	As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
    it "overwrites the honk_horn to Beep-bee-bee-boop-bee-doo-weep" do
        tesla = Tesla.new(1900)
        expect(tesla.honk_horn).to eq("Beep-bee-bee-boop-bee-doo-weep")
    end
    # Story:	As a programmer, I can speed my Teslas up by 10 km/h per acceleration.
    it "increases speed by 10 units" do
        tesla = Tesla.new(1900)
        expect(tesla.speed).to eq(0)
        tesla.accelerate()
        expect(tesla.speed).to eq(10)
    end

    # Story:	As a programmer, I can slow my Teslas down by 7 km/h per braking.
    it "decreases speed by 7 units" do
        tesla = Tesla.new(1900)
        expect(tesla.speed).to eq(0)
        tesla.accelerate()
        expect(tesla.speed).to eq(10)
        tesla.decelerate()
        expect(tesla.speed).to eq(3)
    end

end


# Story: As a programmer, I can call upon a car to tell me all it's information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.




# Story: As a programmer, I can store and retrieve all of my cars from a garage. Hint: "Garage" is a noun, "store" and "retrieve" are verbs.
#
# Story:	As a programmer, I can sort the cars in my garage based on model year.
#
# Story:	As a programmer, I can sort the cars in my garage based on model. Hint:	Sort based on class name.
#
# Story:	As a programmer, I can sort the cars in my garage based on model and then year. Hint: Find out how the spaceship operator can help you with an array.
