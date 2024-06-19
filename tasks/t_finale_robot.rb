#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"

class TFinaleRobot < UrRobot
include Turner
include SensorPack

def action
    puts "entrez un nombre de colonne svp"
    colonne = gets.chomp.to_i 
    current = 1
    beeper = 0

13.times do
    13.times do 
        while next_to_a_beeper?
            pick_beeper
            beeper += 1
        end
        move if front_is_clear?
    end
    turn_around
    13.times { move }
    turn_right
    move
    turn_right
    end

turn_right
13.times { move }
turn_around

while @beepers != 0
    until current > colonne
        current.times do
            if beeper > 0
                put_beeper 
                beeper -= 1
            end
            move
        end
        turn_around
        current.times { move }
        turn_left
        move
        turn_left
        current += 1
    end
end 
end
end

