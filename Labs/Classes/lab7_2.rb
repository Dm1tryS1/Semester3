# frozen_string_literal: true

# class Triangle
class Triangle
  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def area
    per = (side_a + side_b + side_c) / 2.0
    square = (per * (per - side_a) * (per - side_b) * (per - side_c))
    square.positive? ? Math.sqrt(square).round(2) : false
  end
end

# class Rectangle
class Rectangle < Triangle
  attr_reader :side_d, :diagonal_a, :diagonal_b

  def initialize(side_a, side_b, side_c, side_d, diagonal_a, diagonal_b)
    super side_a, side_b, side_c
    @side_d = side_d
    @diagonal_a = diagonal_a
    @diagonal_b = diagonal_b
  end

  def area
    alpha = (side_a**2 + side_b**2 - diagonal_a**2) / (2 * side_a * side_b)
    beta = (side_c**2 + side_d**2 - diagonal_a**2) / (2 * side_c * side_d)

    return false if (beta.abs > 1) || (alpha.abs > 1)

    alpha = Math.acos(alpha)
    beta = Math.acos(beta)

    per = (side_a + side_b + side_c + side_d) * 0.5

    square = ((per - side_a) * (per - side_b) * (per - side_c) * (per - side_d)) - (side_a * side_b * side_c * side_d * Math.cos((alpha + beta) * 0.5)**2)
    square.positive? ? Math.sqrt(square).round(2) : false
  end
end
