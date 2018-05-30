require 'byebug'

class Towers 
  attr_reader :towers
  def initialize(towers = [[3, 2, 1],[],[]])
    @towers = towers 
  end
  
  def play 
    
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
  
  def move 
    
  end
  
  def get_move
    
  end
  
end