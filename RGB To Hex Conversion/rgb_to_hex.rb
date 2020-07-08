=begin

passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.
Your answer should always be 6 characters long

rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3

=end

def rgb(r, g, b)
    #cleaning rgb values
    r1,g1,b1 = [r,g,b].map! { |x| if x < 0 then 0 elsif x > 255 then 255 else x end }
    #return r.to_s(16) + g.to_s(16) + b.to_s(16)
    return ( "%02x%02x%02x" %[r1,g1,b1] ).upcase
end
