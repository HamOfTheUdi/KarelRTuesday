#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "mohamad_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/horloge")
  
  karel = MohamadRobot.new(7, 8, Robota::NORTH, 3)
  karel.put_beepers
  karel.move1
  karel.turn_left
  karel.move1
  karel.move1
  karel.put_beepers
  karel.turn_right
  karel.move1
  karel.turn_left
  karel.move1
  karel.move1
  karel.move1
  karel.turn_left
  karel.move1
  karel.move1
  karel.put_beepers


  
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end