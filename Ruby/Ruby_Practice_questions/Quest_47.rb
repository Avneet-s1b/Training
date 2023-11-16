require "date"

def fun(month, year)
  date = Date.new(year, month)

  while date.month == month
    if date.day == 13 && date.wday == 5
      return true
    end
    date += 1
  end

  return false
end

print "enter month:"

month = gets.chomp.to_i

print "enter year:"

year = gets.chomp.to_i

puts fun month, year
