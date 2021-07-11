# frozen_string_literal: true

require './lab7_2'
require 'minitest/autorun'
# Test for Triangle
class TestTriangle < MiniTest::Unit::TestCase
  def test_1_triangle
    assert_in_delta(6.0, Triangle.new(3, 4, 5).area, 0.001)
  end

  def test_2_triangle
    assert_in_delta(8.94, Triangle.new(3, 6, 7).area, 0.001)
  end

  def test_3_triangle
    assert_equal(false, Triangle.new(4, 4, 8).area)
  end
end

# Test for Rectangle
class TestRectangle < MiniTest::Unit::TestCase
  def test_1_rectangle
    assert_in_delta(16.0, Rectangle.new(4, 4, 4, 4, 5.657, 5.657).area, 0.1)
  end

  def test_2_rectangle
    assert_in_delta(14.36, Rectangle.new(3.8, 4.3, 6.3, 2.6, 5.1, 6.3).area, 0.1)
  end

  def test_3_rectangle
    assert_equal(false, Rectangle.new(1, 1, 1, 3, 3, 3).area)
  end
end

# Test Parent
class TestParent < MiniTest::Unit::TestCase
  def test_1_parent
    assert_kind_of Triangle, Rectangle.new(2, 2, 2, 2, 2.8, 2.8)
  end

  def test_2_parent
    assert_equal Triangle, Rectangle.superclass
  end
end
