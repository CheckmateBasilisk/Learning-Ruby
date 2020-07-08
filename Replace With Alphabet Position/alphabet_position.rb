# https://www.codewars.com/kata/546f922b54af40e1e90001da/train/ruby

=begin
 given a string, replace every letter with its position in the alphabet.

 If anything in the text isn't a letter, ignore it and don't return it.

 "a" = 1, "b" = 2, etc.

 Example
"The sunset sets at twelve o' clock." =>
"20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
=end

def alphabet_position(text)
    a_offset = ("a".codepoints.first) - 1 # offset to turn 'a' into 1
    str = text.downcase.gsub(/[^a-z]/,'') # clearing out everything but letters
    positions = str.codepoints.map! { |n| n-a_offset } # turn it into positions
    return positions.join(' ')
end

puts(alphabet_position("The sunset sets at twelve o' clock"))
