# frozen_string_literal: true

require 'rspec'
require_relative 'task32'

describe 'task32' do
  it 'returns valid answer' do
    func1 = ->(x) { (x - 1) / (x + 2) }
    func2 = ->(x) { Math.sin(x / 2 - 1) }

    expect(Prog.new.minmax(func1, 0..1)).to eq [0.0, -0.5]
    expect(Prog.new.minmax(func2, -1..1)).to eq [-0.479, -0.997]
  end
end
