#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "selective_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/aleatoire.kwld")
  
  karel = SelectiveRobot.new(11, 2, Robota::EAST, 0)
  karel.move9
  karel.turn_right
  karel.move 
  karel.turn_right
  karel.move9
  karel.turn_left
  karel.move 
  karel.turn_left
  karel.move9
  karel.turn_right
  karel.move 
  karel.turn_right
  karel.move9
  karel.turn_left
  karel.move 
  karel.turn_left
  karel.move9
  karel.turn_right
  karel.move 
  karel.turn_right
  karel.move9
 karel.turn_left
  karel.move 
  karel.turn_left
  karel.move9
  karel.turn_right
  karel.move 
  karel.turn_right
  karel.move9
  karel.turn_left
  karel.move 
  karel.turn_left
  karel.move9
  karel.turn_right
  karel.move 
  karel.turn_right
  karel.move9
  karel.turn_left
  karel.move 
  karel.turn_left
  karel.move9

 end

if __FILE__ == $0
  if $graphical
     screen = window(11, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end