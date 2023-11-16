def fun(year)
  count = 0
  Date.new(year).step(Date.new(year, 12, 31)) { |date| count += 1 if date.wday == 6 && date.day == 14 }
  return count
end

require "date"

print "Enter year: "

year = gets.chomp.to_i

puts fun year
