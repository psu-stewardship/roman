require 'byebug'
class Roman
  attr_reader :value, :numeral_map



  def initialize(value)
    @value = value
    @numeral_map = {1=>'I', 5=>'V', 10=>'X', 50=>'L', 100=>'C'}
  end

  def to_roman
    return numeral_map[value] if (numeral_map[value])
    return 'I'+numeral_map[value+1] if (numeral_map[value+1])
    return numeral_map[value-1]+'I' if (numeral_map[value-1])

    numeral = biggest_numeral(value)
    numeral[1]+'I'*(value-numeral[0])
  end

  def biggest_numeral(number)
    numeral_map.select{|k,v| number >= k }.max
  end
end