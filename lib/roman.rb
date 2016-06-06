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
    if (output.include?('IIII'))
      output.gsub('IIII','IV')
    else
      output
    end
  end

  def biggest_numeral(number)
    numeral_map.select{|k,v| number >= k }.max
  end
end