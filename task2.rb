# frozen_string_literal: true

# main class
class Prog
  def initialize(el1)
    @r = el1
    @eps = 10**-4
  end

  def exec
    exs = Math::PI * @r**2

    puts((1..100_000).to_a.collect { |x| @r**2 * x * Math.sin(2 * Math::PI / x) / 2 }.find { |y| exs - y < @eps })
  end
end
