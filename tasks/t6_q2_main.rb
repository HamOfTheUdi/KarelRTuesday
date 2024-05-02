#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "mohamad_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/balls")
  
  karel = MohamadRobot.new(1, 6, Robota::NORTH, 0)
karel.move1
karel.pick_beepers
karel.move1
karel.turn_right
karel.move1
karel.pick_beepers
karel.back_up
karel.back_up
karel.pick_beepers
karel.move1
karel.turn_lefty
karel.move1
karel.pick_beepers
karel.turn_right
karel.move1
karel.move1
karel.pick_beepers
karel.back_up
karel.back_up
karel.back_up
karel.back_up
karel.pick_beepers
karel.move1
karel.move1
karel.turn_lefty
karel.move1
karel.turn_right
karel.move1
karel.pick_beepers
karel.move1
karel.move1
karel.pick_beepers
karel.back_up
karel.back_up
karel.back_up
karel.back_up
karel.pick_beepers
karel.back_up
karel.back_up
karel.pick_beepers
karel.move1
karel.move1
karel.move1
karel.turn_lefty
karel.move1
karel.pick_beepers
karel.turn_right
karel.move1
karel.move1
karel.pick_beepers
karel.back_up
karel.back_up
karel.back_up
karel.back_up
karel.pick_beepers
karel.move1
karel.move1
karel.turn_lefty
karel.move1
karel.turn_right
karel.move1
karel.pick_beepers
karel.back_up
karel.back_up
karel.pick_beepers
karel.move1
karel.turn_lefty
karel.move1
karel.pick_beepers

  
end

if __FILE__ == $0
  if $graphical
     screen = window(12, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end