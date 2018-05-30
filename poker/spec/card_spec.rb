require 'rspec'
require 'card.rb'


describe "Card" do 
  subject(:card) { Card.new("hearts", "10", :black) }
  
  describe '#initialize' do 
    it 'has a suit' do 
      expect(card.suit).to eq("hearts")
    end 
    
    it 'has a value' do 
      expect(card.value).to eq("10")
    end 
    
    it 'has a color' do 
      expect(card.color).to eq(:black)
    end 
  
  end 
end 