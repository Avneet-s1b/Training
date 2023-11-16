require "date"

def fun(day, month, year)
  return Date.valid_civil?(year, month, day)
end

print "enter day:"

day = gets.chomp.to_i

print "enter month:"

month = gets.chomp.to_i

print "enter year:"

year = gets.chomp.to_i

puts fun day, month, year
