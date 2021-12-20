# frozen_string_literal: true

def minmax(v_a, v_b, &block)
  (v_a..v_b).step(0.01).map(&block).minmax.map { |x| x.round(4) }.reverse
end
