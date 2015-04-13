class Dice

  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def throw
    Random.new.rand(@sides)+1
  end

  def has_sides?(guess)
    guess == @sides
  end

end

class PossibleScenarios

  attr_reader :hypotheses, :count

  def initialize(rules)
    raise "We don't support that ruleset yet." unless (rules.exact_no and rules.max_dices==1)
    
    @hypotheses = []
    (1..rules.max_dice_sides).each do |s|
      scenario = [Dice.new(s)]
      @hypotheses << scenario
    end
    @count = @hypotheses.count
  end

end

class Rules

  attr_reader :max_dices, :max_dice_sides, :exact_no

  def initialize(max_dices = 1, max_dice_sides = 20, exact_no = true)
    @max_dices = max_dices
    @max_dice_sides = max_dice_sides
    @exact_no = exact_no
  end

end
