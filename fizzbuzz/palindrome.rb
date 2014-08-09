### Test that a word is a palindrome
#ME: wtf is a palindrome
# -> word is the same backwards and forwards
# -> use any language


# "jesse" -> is not a palindrome
# "mom"   -> is a palindrome
# "poop"  -> is a palindrome

# def palindrome?(word)
#   reverse(word) == word
# end
#
# def reverse(word)
#   # google how to reverse the word somehow
# end

class String
  def palindrome?
    self.reverse == self
  end
end
#
# puts palindrome? "jesse"
# puts palindrome? "mom"
# puts palindrome? "poop"
# puts palindrome? "racecar"


puts "jesse".palindrome?
puts "poop".palindrome?
