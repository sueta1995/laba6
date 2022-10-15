# frozen_string_literal: true

require 'rspec'
require_relative 'task1'

describe 'task1' do
  context 'when getting zero' do
    it 'returns zero' do
      expect(Prog.new(0).exec).to eq 0
    end
  end

  context 'when getting integer' do
    it 'returns square' do
      expect(Prog.new(4).exec).to eq 50.26538250055838
      expect(Prog.new(5).exec).to eq 78.53971640482206
    end
  end
end
