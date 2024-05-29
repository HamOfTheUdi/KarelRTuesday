#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"
class SomativeRobot < UrRobot
include SensorPack
include Turner


def action
 until @beepers != INFINITY
 if next_to_a_beeper?
 pick_beeper
 else
 put_beeper
 end
 if front_is_clear?
 move
 elsif @direction == Robota::EAST
 turn_left
 move
 turn_left
 elsif @direction == Robota::WEST
 turn_right
 unless front_is_clear?
 turn_left
 turn_left
 if front_is_clear?
 while front_is_clear?
 move
 end
 turn_left
 end
 else
 move
 turn_right
end

end

end
  end
end