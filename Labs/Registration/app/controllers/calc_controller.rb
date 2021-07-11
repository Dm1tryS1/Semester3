class CalcController < ApplicationController
  def input
  end

  def view
    n = params[:input].to_i
    @result = (0..n).map { |elem| elem**2 }.map(&:to_s).filter { |str| str == str.reverse }
  end
end
