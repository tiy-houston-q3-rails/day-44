require 'minitest/autorun'
require './fizz_buzz.rb'

class FizzBuzzTest < Minitest::Test

  def test_divisible_by_both
    # take a number, like 15, and test that it returns
    # FizzBuzz
    fizz_buzz = FizzBuzz.new
    number = 15
    result = fizz_buzz.fizzit(number)
    assert_equal "FizzBuzz", result
  end

  def test_devisible_by_three
    fizz_buzz = FizzBuzz.new
    number = 3
    result = fizz_buzz.fizzit(number)
    assert_equal "Fizz", result
  end

  def test_devisible_by_five
    fizz_buzz = FizzBuzz.new
    number = 5
    result = fizz_buzz.fizzit(number)
    assert_equal "Buzz", result
  end

  def test_not_divisible
    fizz_buzz = FizzBuzz.new
    number = 23
    result = fizz_buzz.fizzit(number)
    assert_equal 23, result
  end

end
