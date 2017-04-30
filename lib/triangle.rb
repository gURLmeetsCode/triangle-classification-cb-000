class Triangle
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a && b && c <= 0
    begin
      raise TriangleError
    rescue TriangleError
    end
  else
    if a == b && b == c && a == c
      :equilateral
    elsif a == b && b != c || a == c && c != b || b == c && c != a
      :isosceles
        else
          :scalene
      end
  end
  end

  class TriangleError < StandardError
  end

end
