#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "somative_robot3"
require_relative "../karel/robota"


def task()
  world = Robota::World
  world.read_world("../worlds/bouger.kwld")
  
  karel = SomativeRobot3.new(2, 2, Robota::EAST, INFINITY)
  karel.move_beeper_block(width, height, offset_x, offset_y)

width = 3
height = 3
offset_x = 2
offset_y = 2

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