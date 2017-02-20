class Rps

attr_reader :hand1, :hand2

  def initialize
    @hand1 = hand1
    @hand2 = hand2
  end

  def run
    @hand1 = rand(1..3)
    @hand2 = rand(1..3)
    if @hand1 == 1
      if @hand2 == 1
        return 0
      elsif @hand2 == 2
        return 1
      elsif @hand2 == 3
        return 2
      end
    elsif @hand1 == 2
      if @hand2 == 2
        return 0
      elsif @hand2 == 1
        return 3
      elsif @hand2 == 3
        return 4
      end
    elsif@hand1 == 3
      if @hand2 == 3
        return 0
      elsif @hand2 == 1
        return 5
      elsif @hand2 == 2
        return 6
      end
    end     
  end
end