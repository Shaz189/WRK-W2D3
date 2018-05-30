require 'rspec'
require 'towers'

describe "Towers" do
  subject(:game) {Towers.new}
  describe '#initialize' do 
    it 'includes a tower instance variable' 
    it 'tower instance variable is an array of three arrays'
    it 'tower instance variable\'s first array should have three descending discs'
  end
  
  describe '#play' do 
    it 'asks user for input for a move'
    it 'takes input and calls valid_move?'
    it 'after move always checks for won?'
  end
  
  describe '#won?' do 
    context 'when the game is won' do 
      # let(:won_game) { Towers.new([[], [3, 2, 1], []]) }
      it 'returns true' #do
      #   expect(won_game).to be_won
      # end
    end
    
    context 'when the game is not won' do 
      
      it 'returns false'
      
    end
  end
  
  describe '#valid_move?' do 
    
  end
  
  describe '#move?' do 
    
  end
end