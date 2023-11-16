require "date"

def fun(st, en)
  count = 0
  yr = st
  while yr <= en
    count += 1 if Date.leap?(yr) == true
    yr += 1
  end

  return count
end

print "Enter start year: "

st = gets.chomp.to_i

print "Enter end year: "

en = gets.chomp.to_i

puts fun st, en
