#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "mohamad_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/grinch.kwld")
  
  karel = MohamadRobot.new(12, 10, Robota::NORTH, 0)
  karel.grinch_in
  karel.grinch_out
  karel.turn_left
  karel.move_three
  karel.turn_right
  karel.grinch_in
  karel.grinch_out
  karel.turn_left
  karel.move_three
  karel.turn_right
  karel.grinch_in
  karel.grinch_out
  karel.turn_left
  karel.move_three
  karel.turn_left
  karel.move_three
  karel.move_three
  karel.turn_left
  karel.move_three
  karel.turn_left
  karel.grinch_in
  karel.grinch_out
  karel.turn_right
  karel.move_three
  karel.turn_left
  karel.grinch_in
  karel.grinch_out 
  karel.turn_right
  karel.move_three
  karel.turn_left
  karel.grinch_in
  karel.grinch_out
  karel.turn_right 
  karel.move1
  karel.turn_right
  karel.move_three
  karel.turn_left
  karel.move1
  karel.turn_right
  karel.move1
  karel.move1
  karel.dump_beepers
  
  
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