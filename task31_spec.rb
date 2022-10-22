# frozen_string_literal: true

require 'rspec'
require_relative 'task31'

describe 'task31' do
  it 'returns valid answer' do
    expect(Prog.new.minmax(0..1) { |x| (x - 1) / (x + 2) }).to eq [0.0, -0.5]
    expect(Prog.new.minmax(-1..1) { |x| Math.sin(x / 2 - 1) }).to eq [-0.479, -0.997]
  end
end
