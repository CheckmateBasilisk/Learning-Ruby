# https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec/train/ruby
=begin

Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

10 => 1*0=0; persistence=1
39 => 39*=27, 2*7=14, 1*4=4; persistence=3
999=> 9*9*9=729, 7*2*9=126, 1*2*6=12 1*2=2; persistence = 4

=end
def persistence(n)
    current = n
    persist = 0
    until(current < 10)
        current = int_to_digits(current).reduce(:*) # folds, multiplying
        persist += 1
    end

    return persist
end

def int_to_digits(digit)
    n = digit
    digits = []

    loop do
        digits.unshift n%10
        n /= 10
        #until n==0
        break if n==0
    end

    return digits
end

puts persistence(0)
