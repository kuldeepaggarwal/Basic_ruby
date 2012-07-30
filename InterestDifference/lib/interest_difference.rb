require "mathn"
class InterestDifference
  def initialize(p , t, r = 10)
    @p = p
    @r = r
    @t = t
  end
  def difference
   amount_simple_interest = ((@p * @t * @r) / 100) + @p
   amount_compound_interest = (@p * ((1 + @r * 0.01) ** @t))
   puts (amount_compound_interest - amount_simple_interest).round(3)
  end
end