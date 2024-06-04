#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"
class SomativeRobot3 < UrRobot
include SensorPack
include Turner

def move_beeper_block(width, height, offset_x, offset_y)
    
    beeper_positions = Array.new(height) { Array.new(width, false) }

    
    (0...height).each do |y|
      (0...width).each do |x|
        if beeper_present?(x, y)
          beeper_positions[y][x] = true
        end
      end
    end

   
    (0...height).each do |y|
      (0...width).each do |x|
        if beeper_positions[y][x]
          move_to_position(x, y)
          pick_beeper
        end
      end
    end

    
    (0...height).each do |y|
      (0...width).each do |x|
        if beeper_positions[y][x]
          move_to_position(x + offset_x, y + offset_y)
          put_beeper
        end
      end
    end
  end

  
  def move_to_position(x, y)
   
    move_to_x(x)
    move_to_y(y)
  end

  def move_to_x(x)
    if x > 0
      turn_right
      x.times { move }
      turn_left
    elsif x < 0
      turn_left
      (-x).times { move }
      turn_right
    end
  end

  def move_to_y(y)
    if y > 0
      y.times { move }
    elsif y < 0
      turn_around
      (-y).times { move }
      turn_around
    end
  end


  def turn_right
    3.times { turn_left }
  end

  def turn_around
    2.times { turn_left }
  end

  
  def beeper_present?(x, y)
    move_to_position(x, y)
    result = next_to_a_beeper?
    move_to_position(-x, -y) 
    result
  end

end