class Display
  def initialize
    @first  = STDIN.gets.split.map(&:to_i)
    @second = STDIN.gets.split.map(&:to_i)
    @first.each  {|n| raise 'Opps' unless n.between?(1,100_000) }
    @second.each {|n| raise 'Opps' unless n.between?(1,100_000) }
  end

  def result
    result = "NO"
    @first.each{|s| @second.each{|t| result = "YES" if s == t}}
    result
  end
end

display = Display.new
puts display.result
