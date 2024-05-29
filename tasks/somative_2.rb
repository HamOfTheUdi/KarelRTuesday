#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "1_robot"
require_relative "2_robot"
require_relative "3_robot"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../karel/voituress")
  
  karel = Robot1.new(2, 3, Robota::NORTH, 0)
  karel2 = Robot2.new(2, 4, Robota::NORTH, 0)
  karel3 = Robot3.new(2, 6, Robota::NORTH, 0)
  karel.oil_pan
  karel2.oil_filter
  karel3.oil_quart
  
  

 end


if __FILE__ == $0
  if $graphical
     screen = window(20, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end