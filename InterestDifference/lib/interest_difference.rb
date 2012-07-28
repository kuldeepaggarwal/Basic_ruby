require "mathn"
class InterestDifference
  def initialize(p , r = 10, t)
    @p = p
    @r = r
    @t = t
  end
  def difference
   amount_simple_interest = ((@p * @t * @r) / 100) + @p
   amount_compound_interest = (@p * ((1 + @r * 0.01) ** @t)).round
   puts (amount_compound_interest - amount_simple_interest).abs
  end
end