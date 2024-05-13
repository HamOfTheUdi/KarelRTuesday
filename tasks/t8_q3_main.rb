#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "robotcolors_mohamad"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  
  karel = RobotColorsMohamad.new(1, 1, Robota::NORTH, 1, :red)
  karel2 = RobotColorsMohamad.new(1, 1, Robota::NORTH, 0, :blue)
  karel3 = RobotColorsMohamad.new(6, 1, Robota::EAST, 0, :yellow)
  karel4 = RobotColorsMohamad.new(6, 6, Robota::SOUTH, 0, :black)
  karel5 = RobotColorsMohamad.new(1, 6, Robota::WEST, 0, :green)



  
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