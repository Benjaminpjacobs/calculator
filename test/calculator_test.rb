require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator'

class CalculatorTest < Minitest::Test
  def test_it_exits
    calc = Calculator.new
    assert_instance_of Calculator, calc
  end
  def test_it_starts_with_zero_total
    calc = Calculator.new
    assert_equal 0, calc.total
  end
  def test_it_can_add
    calc = Calculator.new
    calc.add(2,2)
    assert_equal 4, calc.total
  end
  def test_it_can_clear
    calc = Calculator.new
    calc.add(2,2)
    calc.clear
    assert_equal 0, calc.total
  end
  def test_it_can_subtract
    calc = Calculator.new
    calc.subtract(10,2)
    assert_equal 8, calc.total
  end
  def test_add_can_take_one_arg
    calc = Calculator.new
    calc.add(10)
    assert_equal 10, calc.total
  end
  def test_subtract_can_take_one_arg
    calc = Calculator.new
    calc.subtract(10)
    assert_equal -10, calc.total
  end
  def test_add_to_total
    calc = Calculator.new
    calc.add(2,4)
    calc.add(2)
    assert_equal 8, calc.total
  end
  def test_subtract_from_total
    calc = Calculator.new
    calc.add(2,4)
    calc.subtract(5)
    assert_equal 1, calc.total
  end
end