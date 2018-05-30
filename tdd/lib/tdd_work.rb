require 'byebug'

class Array 
  
  def my_uniq
    hash = {}
    each do |el|
      hash[el] = self.count(el)
    end 
    
    hash.keys
  end 
  
  def two_sum
    pairs = []
    each_with_index do |el, i|
      each_with_index do |el2, j|
        next if i == j
        pairs << [i, j].sort if el + el2 == 0
      end 
    end 
    
    pairs.my_uniq
  end 
  
  def my_transpose
    col = Array.new(self.length) {Array.new}
   
    length.times do |i|
      length.times do |j|
        col[j][i] = self[i][j]
      end
    end
   col
  end 
  
  def stock_picker
    greatest_profit = 0
    greatest_pair = []
    each_with_index do |el, i|
      each_with_index do |el2, j|
        next if i >= j
        greatest_pair = [i, j] if (el2 - el > greatest_profit)
        greatest_profit = (el2 - el) if (el2 - el > greatest_profit)
      end 
    end 

    greatest_pair
  end
  
end 