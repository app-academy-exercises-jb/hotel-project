class Room
    def initialize(number)
        @capacity = number
        @occupants = []
    end

    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full?
        @occupants.length >= @capacity
    end

    def available_space
        @capacity - @occupants.length
    end

    def add_occupant(occupant)
        if full?
            false
        else
            @occupants << occupant
            true
        end
    end
end