
require "game"

describe "Test Game" do
  describe '#score' do
    before do
      @game = Game.new
    end

    it 'returns 300 for all strike' do
      12.times { @game.roll(10) }
      temp = @game.score
      expect(temp).to eq(300)
      puts "************************ \n\n"
      puts "Total score : #{temp}"
    end

    it 'returns 177 for in-class case' do
      puts "\n\n"
      @game.roll(10)
      @game.roll(8)
      @game.roll(1)
      @game.roll(2)
      @game.roll(8)
      @game.roll(5)
      @game.roll(4)
      @game.roll(10)
      @game.roll(10)
      @game.roll(10)
      @game.roll(5)
      @game.roll(5)
      @game.roll(10)
      @game.roll(10)
      2.times{ @game.roll(0)}
      temp = @game.score
      expect(temp).to eq(177)
      puts "************************ \n\n"
      puts "Total score : #{temp}"
    end

    it 'return 133 for more case' do
      @game.roll(1)
      @game.roll(4)
      @game.roll(4)
      @game.roll(5)
      @game.roll(6)
      @game.roll(4)
      @game.roll(5)
      @game.roll(5)
      @game.roll(10)
      @game.roll(0)
      @game.roll(1)
      @game.roll(7)
      @game.roll(3)
      @game.roll(6)
      @game.roll(4)
      @game.roll(10)
      @game.roll(2)
      @game.roll(10)
      @game.roll(6)
      temp = @game.score
      expect(temp).to eq(131)
      puts "************************ \n\n"
      puts "Total score : #{temp}"
    end

  end
end
