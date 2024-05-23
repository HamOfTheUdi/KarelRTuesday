#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class SelectiveRobot < UrRobot
 include Turner
 include SensorPack

 def put_beeper
    if next_to_a_beeper?
    super
    end
   end
 def pick_beeper
    if next_to_a_beeper?
    super
    end
   end
 def move
    if front_is_clear?
    super
    end
   end
 def move9
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
   end

    def put9
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
   end

  
    
 end