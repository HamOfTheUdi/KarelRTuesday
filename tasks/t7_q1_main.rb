#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "mohamad_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/beton")
  
  karel = MohamadRobot.new(9, 2, Robota::EAST, 32)
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_beepers
  karel.turn_right
  karel.move1
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_beepers
  karel.turn_right
  karel.move1
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_beepers
  karel.turn_right
  karel.move1
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance
  karel.put_advance



  
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