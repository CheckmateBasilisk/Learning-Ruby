# https://www.codewars.com/kata/554e4a2f232cdd87d9000038/train/ruby
# tests were broken on codewars :/

def DNA_strand(dna)
    compl = dna
    compl.gsub!(/[A]/,"t");
    compl.gsub!(/[T]/,"a");
    compl.gsub!(/[C]/,"g");
    compl.gsub!(/[G]/,"c");
    compl.upcase!
    return compl
end

dna = "ATCG"
=begin

A <-> T
C <-> G

=end
puts DNA_strand dna
