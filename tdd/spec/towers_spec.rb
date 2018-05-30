require 'rspec'
require 'towers'

describe "Towers" do
  subject(:game) {Towers.new}
  
  describe '#initialize' do 
    let(:arg_tower) {Towers.new([[],[3,2,1], []])}
    it 'can accept an array of towers' do 
      expect(arg_tower.towers).to eq([[],[3,2,1], []])
    end 
    
    it 'includes a tower instance variable' do 
      expect(game.towers).to eq([[3,2,1], [], []])
    end 
    
    it 'tower instance variable is an array of three arrays' do 
      expect(game.towers.length).to eq(3)
    end 
    
    it 'tower instance variable\'s first array should have three descending discs' do 
      expect(game.towers[0]).to eq([3, 2, 1])
    end
    
  end
  
  describe '#play' do 
    it 'asks user for input for a move'
    it 'takes input and calls valid_move?'
    it 'after move always checks for won?'
  end
  
  describe '#won?' do 
    context 'when the game is won' do 
      let(:won_game) { Towers.new([[], [3, 2, 1], []]) }
      
      it 'returns true' do
        expect(won_game).to be_won
      end
    end
    
    context 'when the game is not won' do 
      it 'returns false' do 
        expect(game).to_not be_won
      end  
    end
  end
  
  describe '#valid_move?' do
    it 'requires 2 towers' do 
      expect {game.valid_move?(1)}.to raise_error(ArgumentError)
    end
    
    context 'when move is valid' do 
      it 'returns true' do 
        expect(game.valid_move?(0, 1)).to be true 
      end 
      
      
    end 
    context 'when move is not valid' do 
      it 'returns false ' do 
        expect(game.valid_move?(3, 6)).to be false
      end 
    end  
    
  end
  
  describe '#move' do 
    it 'removes disc from the from_tower' do 
      game.move(0, 2)
      expect(game.towers[0]).to eq([3, 2])
    end
    it 'adds disc to the to_tower' do 
      game.move(0, 2)
      expect(game.towers[2]).to eq([1])
    end
  end
  
  # describe '#get_move' do 
  #   it 'asks user for an input' do 
  #     expect(game.get_move).to receive(:gets)
  #   end
  # end
end