# frozen_string_literal: true

require 'rspec'
require_relative './main'

describe 'main' do
  it 'should count with accuracy 0.001' do
    expect(integral(0.001)).to eq(0.4287378324996507)
  end
  it 'should count with accuracy 0.0001' do
    expect(integral(0.0001)).to eq(0.42976302800720295)
  end
end
