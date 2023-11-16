require 'date'

def fun(date)
    hash = Date._parse(date)

    return hash.values
end

print "Enter date: "

date = gets.chomp

print fun date
puts