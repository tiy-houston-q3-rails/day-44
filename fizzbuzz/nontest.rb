class Fizz
  def run
    (1..100).each do |i|
      if i % 3 == 0 && i % 5 == 0
        print "FizzBuzz"
      elsif i % 3 == 0
        print "Fizz"
      elsif i % 5 == 0
        print "Buzz"
      else
        print i
      end
    end
  end
end

Fizz.new.run
