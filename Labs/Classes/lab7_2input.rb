# frozen_string_literal: true

require './lab7_2'

puts 'Введите три стороны треугольника:'
params_for_triangle = gets.chomp.split.map { |x| Float x, exception: false }.compact
unless params_for_triangle.size == 3
  puts 'Некорректный ввод'
  exit 1
end

side_a, side_b, side_c = params_for_triangle
triangle = Triangle.new(side_a, side_b, side_c)

puts 'Введите длины сторон (AB, BC, CD, DA) и длины диагоналей (AC и BD) четырехугольника:'
params_for_rectangle = gets.chomp.split.map { |x| Float x, exception: false }.compact
unless params_for_rectangle.size == 6
  puts 'Некоррекнты ввод'
  exit 1
end

side_a, side_b, side_c, side_d, diagonal_a, diagonal_b = params_for_rectangle
rectangle = Rectangle.new(side_a, side_b, side_c, side_d, diagonal_a, diagonal_b)

puts ''
puts 'Параметры треугольника:'
puts "Сторона 1: #{triangle.side_a}; сторона 2: #{triangle.side_b}; сторона 3: #{triangle.side_c}"
s = triangle.area
if s
  puts "Площадь треугольника: #{s}"
else
  puts 'Треугольник не существует'
end

puts ''
puts 'Параметры четырехугольника:'
puts "Сторона 1: #{rectangle.side_a}; сторона 2: #{rectangle.side_b}; сторона 3: #{rectangle.side_c}; сторона 4: #{rectangle.side_d}"
puts "Диагональ 1: #{rectangle.diagonal_a}; диагональ 2: #{rectangle.diagonal_b}"
s = rectangle.area
if s
  puts "Площадь четырехугольника: #{s}"
else
  puts 'Четырехугольник не существует'
end
