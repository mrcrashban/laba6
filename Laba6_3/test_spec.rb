# frozen_string_literal: true

require 'rspec'
require_relative './main'

describe 'main' do
  it 'should return 0.25 -0.5' do
    expect(minmax(0.0, 2.0) { |x| (x - 1) / (x + 2) }).to eq([0.25, -0.5])
  end
  it 'should return -0.4794 -0.9975' do
    expect(minmax(-1.0, 1.0, &->(x) { Math.sin((x / 2) - 1) })).to eq([-0.4794, -0.9975])
  end
end
