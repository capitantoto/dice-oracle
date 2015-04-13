class Guesser

  attr_reader :hypotheses

  def initialize(hypotheses)
    @scenarios = []
    hypotheses.each do |h|
      @scenarios << {:hyp => h, :prob => 1.0/hypotheses.count}
    end
  end

  def update_probs(aThrow)
    overall_chance = 0
    scenarios.each do |s|
      s[:hyp]
    end
  end
  def discard(hypotheses)
  end
end

class Thrower
  attr_reader :handful
  
  def initialize(aDice)
    @handful = aDice
  end

  def throw
    sum = 0
    @handful.each do |dice|
      sum += dice.throw
    end
    sum
  end
end


