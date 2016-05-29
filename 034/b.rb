class Pair
  def initialize
    @num = STDIN.gets.to_i
    raise 'Opps' unless @num.between?(1,1_000_000_000)
  end

  def result
    @num.even? ? @num - 1 : @num + 1
  end
end

pair = Pair.new
puts pair.result
