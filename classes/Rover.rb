class Rover

  attr_accessor :currentOrientation
  attr_accessor :x
  attr_accessor :y

  def initialize(x, y, orientation)
    @currentOrientation = orientation
    @x = x
    @y = y
  end

  def initialize
  end

  #function move forward when input is M
  private
  def moveForward
    case @currentOrientation
    when "N"
      @y += 1
    when "S"
      @y -= 1
    when "W"
      @x -= 1
    when "E"
      @x +=  1
    end
  end

  #function to turn left or right when input is L or R
  private
  def turn(direction)
   case @currentOrientation
   when "N"
     if direction == "R"
       @currentOrientation = "E"
     else
       @currentOrientation = "W"
     end

   when "S"
     if direction == "R"
       @currentOrientation = "W"
     else
       @currentOrientation = "E"
     end

   when "W"
     if direction == "R"
       @currentOrientation = "N"
     else
       @currentOrientation = "S"
     end

    when "E"
     if direction == "R"
       @currentOrientation = "S"
     else
       @currentOrientation = "N"
     end
    end
  end

  #determines whether move forward or turn to a side
  public
  def move(input)
    if input == "M"
      moveForward()
    else
      turn(input)
    end
   end

end
