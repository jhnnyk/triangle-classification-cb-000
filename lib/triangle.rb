class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.a <= 0 || self.b <= 0 || self.c <= 0
      raise TriangleError
    end

    if self.a + self.b <= self.c || self.b + self.c <= self.a || self.a + self.c <= self.b
      raise TriangleError
    end

    if self.a == self.b && self.b == self.c
      :equilateral
    elsif self.a == self.b || self.b == self.c || self.a == self.c
      :isosceles
    elsif self.a != self.b && self.b != self.c && self.a != self.c
      :scalene
    end
  end
end

class TriangleError < StandardError

end
