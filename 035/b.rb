class B
  attr_reader :s, :t
  def self.result(s, t)
    ans = 0
    x = s.count("R") - s.count("L") 
    y = s.count("U") - s.count("D") 
    z = s.count("?")
    ans = x.abs + y.abs
    if t == 1
      ans = ans + z
    else
      if ans >= z
        ans = ans - z
      else
        z = ans - z
        z % 2 == 0 ? ans = 0 : ans = 1
      end
    end
    return ans
  end
end

if __FILE__ == $0
  s = STDIN.gets
  t = STDIN.gets.to_i
  raise 'error' unless s.length >= 1 || s.length <= 1_000_000
  raise 'error' unless t == 1 || t == 2

  puts B.result(s, t)
end
