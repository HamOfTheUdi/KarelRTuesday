#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "e_robot"
require_relative "h_robot"
require_relative "l_robot"
require_relative "o_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  
  karel = HRobot.new(3, 2, Robota::NORTH, 12)
  karel2 = ERobot.new(7, 7, Robota::EAST, 11)
  karel3 = LRobot.new(3, 11, Robota::NORTH, 7)
  karel4 = LRobot.new(3, 15, Robota::NORTH, 7)
  karel5 = ORobot.new(3, 19, Robota::EAST, 12)
  karel.ecrit_lettre
  karel2.ecrit_lettre
  karel3.ecrit_lettre
  karel4.ecrit_lettre
  karel5.ecrit_lettre
  
  
 end

if __FILE__ == $0
  if $graphical
     screen = window(21, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end