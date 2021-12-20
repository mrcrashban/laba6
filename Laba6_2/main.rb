# frozen_string_literal: true

def integral_formula(xyz, accuracy)
  (xyz / Math.sqrt(1 + xyz**3)) * accuracy
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
  square(text).find { |current_integral| (0.429798384032304 - current_integral) < text }
end
