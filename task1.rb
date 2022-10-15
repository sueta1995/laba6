# frozen_string_literal: true

# main class
class Prog
  def initialize(el1)
    @r = el1
    @eps = 10.0**-4
    @s = 1
    @n = 1
  end

  def exec
    exs = Math::PI * @r**2

    while exs - @s > @eps
      @s = @r**2 * @n * Math.sin(2 * Math::PI / @n) / 2
      @n += 1
    end

    puts @s
  end
end
