#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "mohamad_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  
  karel = MohamadRobot.new(1, 6, Robota::NORTH, 27)
  karel.put_beeper
  karel.move1
  karel.cloche_1
  karel.top_cloche
  karel.top_cloche
  karel.top_cloche
  karel.top_cloche
  karel.put_beeper


  
end

if __FILE__ == $0
  if $graphical
     screen = window(10, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end