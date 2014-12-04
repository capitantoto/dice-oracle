class Guesser

  attr_reader :hypotheses

  def initialize(rules)
    @hypotheses = PossibleScenarios.new(rules).hypotheses
  end

  def discard(hypotheses)
  end
end

class Thrower
  attr_reader :handful
  
  def initialize(handful)
    @handful = handful
  end

  def throw
    sum = 0
    @handful.each do |dice|
      sum += dice.throw
    end
    sum
  end
end


