puts "enter number:"

str = gets.chomp

if (str.to_i % 7) == 0
  puts "1"
else
  puts "0"
end
