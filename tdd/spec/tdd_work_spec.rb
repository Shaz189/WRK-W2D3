require 'rspec'
require 'tdd_work'

describe 'Array' do 
  describe '#my_uniq' do 
    it "removes duplicates from array" do 
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 1, 3, 3].uniq)
    end
    
    it "returns an array" do
      expect([1, 2, 1, 3, 3].my_uniq.class).to be(Array)
    end
    
  end

  describe '#two_sum' do    
    it "finds index pairs of elements that sum to zero" do 
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end 
      
    # it "returns pairs of indicies in numerical order"
    # maybe later write a spec testing if returned indicies are in order

  end
  
  describe '#my_transpose' do 
    it "convert between the row-oriented and column-oriented representations" do 
      rows = [
          [0, 1, 2],
          [3, 4, 5],
          [6, 7, 8]
        ]
        
      cols = [
          [0, 3, 6],
          [1, 4, 7],
          [2, 5, 8]
        ]
      
      expect(rows.my_transpose).to eq(cols)
    end 
        
  end 
  
  describe '#stock_picker' do 
    context "picks pair of days with greatest profit margin" do 
      it "return one array" do 
        stock = [7, 3, 9, 1, 2, 6, 5, 10, 4, 8]
        expect(stock.stock_picker.length).to eq(2)
      end
      
      it "returns array where sell date comes after buy date" do 
        stock = [7, 3, 9, 1, 2, 6, 5, 10, 4, 8]
        result = stock.stock_picker
        expect(result[0] < result[1]).to be true
      end
      
      it "selects pair with greatest profit margin" do
        stock = [7, 3, 9, 1, 2, 6, 5, 10, 4, 8]
        expect(stock.stock_picker).to eq([3, 7])
      end
      
    end
  end
  
end
# 
# describe 'Towers of Hanoi' do 
# 
#   describe 'Array'
# 
# end