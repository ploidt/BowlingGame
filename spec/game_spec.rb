
require "game"

describe Game do
  describe '#score' do
    before do
      @game = Game.new
    end

    it 'returns 300 for all strike' do
      12.times { @game.roll(10) }
      temp = @game.score
      expect(temp).to eq(300)
    end

    it 'returns 177 for test' do
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
    end

  end
end
