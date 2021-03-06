class Triangle
attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
end

  def kind
    if (a + b <= c || a + c <= b || b + c <= a) || (a <=0 || b <=0 || c <=0)
      raise TriangleError # checks for invalid triangles upon initialization
    elsif a == b && b == c
      return :equilateral
    elsif a == b || a == c || b == c
      return :isosceles
    elsif a != b || a != c || b != c
      return :scalene
    end
  end

end


class TriangleError < StandardError
end
