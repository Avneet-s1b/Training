def find_num(arr)
  hash = Hash[]
  n = arr.length
  for i in 1..n
    hash.store(i, 1)
  end

  arr.each do |x|
    hash[x] -= 1
  end

  return [hash.key(1), hash.key(-1)]
end

puts "Enter Array: "

arr = []

while true
  num = gets.chomp
  if num.empty?
    break
  end
  arr.push(num.to_i)
end

print find_num arr
puts
