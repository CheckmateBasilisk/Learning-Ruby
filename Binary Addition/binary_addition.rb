def add_binary(a, b)
    return a + b
end

# makes the conversion from int(binary)->string
# actually #to_str(2) converts it alredy to string binary
# #to_str(8) to octal, #to_str(16) hexadec, #to_str(n) to n-base :/
def int_to_binary(i)
    binary = ""
    until i<=0
        if i%2 == 1
            binary.prepend("1")
        else
            binary.prepend("0")
        end
        i /= 2
    end
    return binary
end
=begin
nr = gets().chomp.to_i
result = add_binary(0,nr) # should output "111111"
=end
result = add_binary(1,1)
puts result
