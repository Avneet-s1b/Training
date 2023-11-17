require "date"

def fun(arr, n)
  hash = Hash["Monday" => 1, "Tuesday" => 2, "Wednesday" => 3, "Thursday" => 4, "Friday" => 5, "Saturday" => 6, "Sunday" => 0]
  for i in 0..arr.length - 1
    day = arr[i]
    v = hash["#{day}"]
    v += n
    v = v % 7
    arr[i] = hash.key(v)
  end

  hash.keys
  return arr
end

arr = []

puts "Enter days in array: "

while true
  day = gets.chomp
  if day.empty?
    break
  end
  arr.push(day)
end

print "Enter days to be incremented: "
n = gets.chomp.to_i

puts fun arr, n
