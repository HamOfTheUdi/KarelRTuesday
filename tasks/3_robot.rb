#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Robot3 < UrRobot
  include Turner

  def oil_quart
   move
   turn_left
   move
   move
   move
   turn_right
   move
   move
   turn_left
   move
   turn_left
   move
   move
   pick_beeper
   pick_beeper
   pick_beeper
   pick_beeper
   pick_beeper
   pick_beeper
   pick_beeper
   pick_beeper
   pick_beeper
   pick_beeper
   pick_beeper
   turn_around
   move
   move
   move
   turn_right
   move
   move
   move
   turn_right
   move
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   end
  end
 