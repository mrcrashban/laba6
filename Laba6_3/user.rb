# frozen_string_literal: true

require_relative './main'
puts 'Решение при помощи блока:'
puts minmax(0.0, 2.0) { |x| (x - 1) / (x + 2) }
puts 'Решение при помощи lambda:'
puts minmax(-1.0, 1.0, &->(x) { Math.sin((x / 2) - 1) })
