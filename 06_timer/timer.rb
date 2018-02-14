class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @hour = 0
    @minute = 0
    @seconds = 0
  end

  def time_string
    counter = 2
    array = [@hour, @minute, @seconds]

    while (counter >= 0) do
      if (array[counter] < 10)
        array[counter] = '0' + array[counter].to_s
      elsif (array[counter] >= 10 && array[counter] < 60)
        array[counter] = array[counter].to_s
      elsif (array[counter] >= 60 && array[counter] != 0)
        additional_time = array[counter] / 60
        remainder = array[counter] % 60
        array[counter-1] += additional_time
        (remainder < 10) ? array[counter] = '0' + remainder.to_s :
                           array[counter] = remainder.to_s
      else
        array[counter] = array[counter].to_s
      end
      counter -= 1
    end
    array.join(':')
  end
end

a = Timer.new
a.seconds = 66
puts a.time_string
