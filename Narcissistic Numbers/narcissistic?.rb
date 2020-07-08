# https://www.codewars.com/kata/5287e858c6b5a9678200083c/train/ruby

=begin
A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).

153 ;   ^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153 => is narcissistic
1634;   ^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634 => is narcissistic
=end

def narcissistic?(value)
    digit_count = value.digits.length
    return value == value.digits.map! { |d| d**digit_count }.reduce(:+)
end

puts narcissistic?(153)
