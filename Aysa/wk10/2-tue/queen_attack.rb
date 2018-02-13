require 'pry'
class Queens

  def initialize(*args)
    @white_queen_position = [0, 3]
    @black_queen_position = [7, 3]
    if args.length > 0
      if args[0][:white] == args[0][:black]
        raise(ArgumentError)
      end
      @white_queen_position = args[0][:white]
      @black_queen_position = args[0][:black]
    end 
  end

  def white
    @white_queen_position
  end

  def black
    @black_queen_position
  end

  def to_s
    board = ""
    1.upto(127) do |i|
      if i % 16 == 0
        board = board + "\n"
      elsif i % 2 == 1
        board = board + "O"
      else i % 2 == 0 && i != 16
        board = board + " " 
      end
    end
    board[@white_queen_position[0] * 16 + @white_queen_position[1] * 2] = "W"
    board[@black_queen_position[0] * 16 + @black_queen_position[1] * 2] = "B"
    board
  end
  

  def attack?
    if @white_queen_position[0] == @black_queen_position[0]
      return true
    elsif @white_queen_position[1] == @black_queen_position[1]
      return true
    elsif @black_queen_position[1] - @white_queen_position[1] == @black_queen_position[0] - @white_queen_position[0]
      return true
    else
      false
    end
  end

end

