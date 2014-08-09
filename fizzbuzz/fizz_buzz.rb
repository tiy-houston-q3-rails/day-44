class FizzBuzz

  def fizzit(number)
    if divisible(5, number) && divisible(3, number)
      "FizzBuzz"
    elsif divisible(3, number)
      "Fizz"
    elsif divisible(5, number)
      "Buzz"
    else
      number
    end
  end

  def divisible(by, number)
    number % by == 0
  end
end


fizz_buzz = FizzBuzz.new
(1..100).each do |i|
  print fizz_buzz.fizzit i
end
