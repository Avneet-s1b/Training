require "date"

def fun(date)
  nd = Date.strptime(date, "%m/%d/%Y")
  en = Date.new(2023, 1, 1)

  return (en - nd).to_i
end

print "Enter date in format mm/dd/yyyy: "
date = gets.chomp

puts fun date
