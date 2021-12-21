# frozen_string_literal: true

def integral_formula(xyz, accuracy)
  (xyz / Math.sqrt(1 + (xyz**3))) * accuracy
end

def square(accuracy)
  Enumerator.new do |element|
    xyz = 0
    result = 0
    loop do
      xyz += accuracy
      integral = integral_formula(xyz, accuracy)
      result += integral
      element << result
    end
  end
end

def input_check(text)
  square(text).find.each_with_index do |current_integral, _index|
    if (0.429798384032304 - current_integral) < text
      puts "Integral = #{current_integral}, Iteration = #{_index}"
      break end
  end

end
