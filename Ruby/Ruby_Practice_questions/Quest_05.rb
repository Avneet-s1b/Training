print "Enter String: "

str = gets.chomp

arr = str.chars

arr.permutation(arr.length) { |x| p x }
