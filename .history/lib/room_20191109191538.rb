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


__END__

rspec ./spec/0_room_spec.rb:8 # PART 1 Room #initialize should accept a capacity (number) as an arg and set @capacity
rspec ./spec/0_room_spec.rb:12 # PART 1 Room #initialize should set @occupants to an empty array
rspec ./spec/0_room_spec.rb:18 # PART 1 Room #capacity should get (return) @capacity
rspec ./spec/0_room_spec.rb:24 # PART 1 Room #occupants should get (return) @occupants
rspec ./spec/0_room_spec.rb:31 # PART 1 Room #full? when the number of @occupants is below @capacity should return false
rspec ./spec/0_room_spec.rb:38 # PART 1 Room #full? when the number of @occupants has met @capacity should return true
rspec ./spec/0_room_spec.rb:46 # PART 1 Room #available_space should return the number of additional occupants the room can take before reaching @capacity
rspec ./spec/0_room_spec.rb:55 # PART 1 Room #add_occupant should accept a person's name (string) as an arg 
rspec ./spec/0_room_spec.rb:59 # PART 1 Room #add_occupant should call Room#full?
rspec ./spec/0_room_spec.rb:65 # PART 1 Room #add_occupant when the room is not full should add that name to @occupants
rspec ./spec/0_room_spec.rb:71 # PART 1 Room #add_occupant when the room is not full should return true
rspec ./spec/0_room_spec.rb:77 # PART 1 Room #add_occupant when the room is already full should not add the name
rspec ./spec/0_room_spec.rb:85 # PART 1 Room #add_occupant when the room is already full should return false