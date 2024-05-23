#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class ERobot < UrRobot
  include Turner

  def ecrit_lettre
   put_beeper
   move
   put_beeper
   move
   put_beeper
   back_up
   back_up
   turn_right 
   move
   put_beeper
   move
   put_beeper
   move
   put_beeper
   move
   put_beeper
   turn_left
   move
   put_beeper
   move
   put_beeper
   back_up
   back_up
   turn_left
   move
   move
   turn_right
   move
   put_beeper
   move
   put_beeper

   end
 end