=begin

0. The possible choices of dice are stored in an array.
1. Nature chooses an element of that array.
2. Nature throws the dice, and annouces the result to the Guesser.
3. Guesser calculates the probability of having that result be prduced by each of the possible dice choices.
4. Guesser picks the dice choice with the highest probability of having produced Nature's result.
5. Guesser asks Nature whether that's dice she's holding.
6. Nature responds either `true` or `false`.
  - if `true`, then end.
  - if false, Guesser removes that possibility from the list of possible hypotheses, and GOTO 2

=end

require_relative 'players'
require_relative 'environment'
