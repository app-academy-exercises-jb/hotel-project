require_relative "room"
require "byebug"

class Hotel
    def initialize(name, rooms)
        @name = name
        @rooms = Hash.new
        rooms.each { |k, v|
            @rooms[k] = Room.new(v)
        }
    end

    def name
        @name.split(" ").map(&:capitalize).join(" ")
    end

    def rooms
        @rooms
    end

    def room_exists?(room)
       rooms.keys.include?(room) 
    end

    def check_in(person, room)
        if room_exists?(room)
            if @rooms[room].full?
                p "sorry, room is full"
            end
            @rooms[room].add_occupant(person)
            p "check in successful"
        else
            p "sorry, room does not exist"
        end
    end

    def has_vacancy?
        @rooms.any? { |(k, v)| !v.full? }
    end

    def list_rooms
        @rooms.each { |k, v| 
            
            p k + v.available_space.to_s
        }
    end
end

Hotel.new("hilbert's grand hotel", "Basement"=>4, "Attic"=>2, "Under the Stairs"=>1)