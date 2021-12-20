# frozen_string_literal: true

def integral(accuracy)
  x = accuracy
  b = 0
  while (1 - accuracy) > x
    b += (x / Math.sqrt(1 + x**3)) * accuracy
    x += accuracy
  end
  b
end

def number_of_segments(accuracy)
  x = 0
  n = 0
  while (1 - accuracy) > x
    n += 1
    x += accuracy
  end
  n
end

def input_check(text)
  if text.positive?
    puts "Integral = #{integral(text)}"
    puts "Number of segments = #{number_of_segments(text)}"
  else
    puts 'Incorrect input data'
  end
end
