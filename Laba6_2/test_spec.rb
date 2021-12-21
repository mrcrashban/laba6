# frozen_string_literal: true

require 'rspec'
require_relative './main'

describe 'main' do
  it 'should count with accuracy 0.001' do
    expect { input_check(0.001) }.to output("Integral = 0.42944476203976617, Iteration = 998\n").to_stdout
  end
  it 'should count with accuracy 0.0001' do
    expect { input_check(0.0001) }.to output("Integral = 0.42976302800720295, Iteration = 9998\n").to_stdout
  end
end
