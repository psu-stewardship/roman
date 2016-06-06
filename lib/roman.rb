require 'byebug'
class Roman
  attr_reader :value, :numeral_map



  def initialize(value)
    @value = value
    @numeral_map = {1=>'I', 5=>'V', 10=>'X', 50=>'L', 100=>'C', 500=>'D', 1000 => 'M'}
  end

  def to_roman
    output = ''
    current_value = value
    while(current_value>0) do
      numeral = get_next(current_value)
      output += numeral[1]
      current_value -= numeral[0]
    end
    four_of_the_same(output)
  end

  def get_next(value)
    biggest_numeral(value)
  end

  def four_of_the_same(output)
    out = four_rule(output,'IIII','IV','VIV','IX')
    out = four_rule(out,'XXXX','XL','LXL','XC')
    four_rule(out,'CCCC','CD','DCD','CM')
  end

  def four_rule(original, four_pattern, four_pattern_sub, sandwich_pattern, sandwich_pattern_sub)
    return original unless (original.include?(four_pattern))

    out = original.gsub(four_pattern,four_pattern_sub)
    if (out.include?(sandwich_pattern))
      out = out.gsub(sandwich_pattern,sandwich_pattern_sub)
    end
    out
  end

  def biggest_numeral(number)
    numeral_map.select{|k,v| number >= k }.max
  end
end