class Game
  FRAME = 10

  def initialize
    @throws = []
  end

  def roll(pins)
    @throws.push pins
  end

  def score
    score = 0
    index = 0

    FRAME.times do
      if strike?(index)
        #puts "index: #{index}"
        score += strike_score(index)
        puts "current score: #{score}"
        index += 1
      elsif spare?(index)
        #puts "index: #{index}"
        score += spare_score(index)
        puts "current score: #{score}"
        index += 2
      else
        #puts "index: #{index}"
        score += (@throws[index] + @throws[index+1])
        puts "current score: #{score}"
        index += 2
      end
    end
    score
  end

  private
  def strike?(index)
    @throws[index] == 10
  end

  def spare?(index)
    @throws[index] + @throws[index+1] == 10
  end

  def strike_score(index)
    10 + @throws[index+1] + @throws[index+2]
  end

  def spare_score(index)
    10 + @throws[index+2]
  end
end