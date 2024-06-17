#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"
class Somative1bRobot < UrRobot
include SensorPack
include Turner
    

    def action
        move
        until next_to_a_beeper?
            put_beeper
            turn_left
            if front_is_clear?
                  move
            else
                turn_right
                if front_is_clear?
                  move
                else
                    turn_right
                    move
                end
              end
        end
    end
end