#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "somative1b_robot"
require_relative "../karel/robota"


def task()
  world = Robota::World
  world.read_world("../worlds/toit2.kwld")
  
  karel = Somative1bRobot.new(2, 6, Robota::EAST, INFINITY)
  karel.action

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