class Prog
  @@eps = 10**-4

  def initialize el1
    @r = el1
  end

  def exec
    exs = Math::PI * @r**2

    puts (1..100000).to_a.collect { |x| @r**2 * x * Math.sin(2 * Math::PI / x) / 2 }.find { |y| exs - y < @@eps }
  end
end