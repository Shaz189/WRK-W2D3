require 'byebug'

class Towers 
  attr_reader :towers
  def initialize(towers = [[3, 2, 1],[],[]])
    @towers = towers 
  end
  
  def play 
    until won?
      move_input = get_move 
      if valid_move?(move_input[0], move_input[1])
        move(move_input[0], move_input[1])
      end
      
    end
    puts "congrats you win"
  end
  
  def won?
    return true if towers[0].empty?
    return true if towers[1].length == 3 || towers[2].length == 3
  end
  
  def valid_move?(from_tower, to_tower)
    from = towers[from_tower]
    to = towers[to_tower]
    
    return false if from == nil || to == nil
    return false if from.empty?
    return false if !to.empty? && from[-1] > to[-1]
    
    true
  end
  
  def move(from_tower, to_tower)
    disc = towers[from_tower].pop 
    towers[to_tower] << disc 
  end
  
  def get_move
    puts "enter the start and end tower. example: 1, 2 "
    input = gets.chomp.split(",")
    input.map{|el| Integer(el)}
  end
  
end