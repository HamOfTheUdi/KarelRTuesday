#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class MohamadRobot < UrRobot
  include Turner

 def put_beepers
  put_beeper
 end

def move1
  move
end

def turn_lefty
  turn_left
end

def pick_beepers
  pick_beeper
end

def top_cloche
  put_beeper
  turn_right
  move1
  put_beeper
  back_up
  back_up
  put_beeper
  move1
  turn_left
  move1
end

def cloche_1
  put_beeper
  turn_right
  move1
  move1
  move1
  put_beeper
  back_up
  put_beeper
  back_up
  put_beeper
  back_up
  back_up
  back_up
  back_up
  put_beeper
  move1
  put_beeper
  move1
  put_beeper
  move1
  turn_left
  move1
  put_beeper
  turn_right
  move1
  move1
  put_beeper
  back_up
  put_beeper
  back_up
  put_beeper
  back_up
  put_beeper
  back_up
  put_beeper
  move1
  move1
  turn_left
  move1
end

def grinch_in
  back_up
  back_up
  turn_left
  move1
  turn_left
  move1
  move1
  pick_beepers
  pick_beepers
  turn_right 
  move1
  pick_beepers
  pick_beepers
end

def grinch_out
  back_up
  turn_right 
  move1
  move1
  turn_right
  move1
  turn_left
  move1
  move1
end

def move_three
  move1
  move1
  move1
end

def dump_beepers
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
  put_beeper
  put_beeper
end




end