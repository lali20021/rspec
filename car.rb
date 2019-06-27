class Vehicle
    def initialize (model_year)
        @model_year = model_year
        @lights = false
        @signal_left = false
        @signal_right = false
        @speed = 0
    end

    def model_year
        @model_year
    end

    def speed
        @speed
    end

    def sets_lights
        @lights = @lights == false ? true : false
    end

    def lights
        @lights
    end

    def sets_signal_left
        @signal_left = @signal_left == false ? true : false
    end

    def sets_signal_right
        @signal_right = @signal_right == false ? true : false
    end

    def signal_left
        @signal_left
    end

    def signal_right
        @signal_right
    end

    def accelerate
        @speed += @accelerate_units
    end

    def decelerate
        @speed -= @decelerate_units
    end
end


class Car < Vehicle
    def initialize (model_year)
        super(model_year)
        @wheels = 4
    end

    def wheels
        @wheels
    end

    def honk_horn
        "BEEP!"
    end
end

class Toyota < Car
    def initialize (model_year)
        super(model_year)
    end

    def honk_horn
        "whoop"
    end

end

class Tata < Car
    def initialize (model_year)
        super(model_year)
    end

    def honk_horn
        "beep"
    end
end


class Tesla < Car
    def initialize (model_year)
        super(model_year)
        @accelerate_units = 10
        @decelerate_units = 7
    end

    def honk_horn
        "Beep-bee-bee-boop-bee-doo-weep"
    end

end
