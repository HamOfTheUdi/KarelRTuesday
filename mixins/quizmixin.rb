#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


module Quiz


  def turn_right
    turn_left
    turn_left
    turn_left
  end
  

  def turn_around
    turn_left
    turn_left
  end
  

  def back_up
    turn_around
    move
    turn_around
  end
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