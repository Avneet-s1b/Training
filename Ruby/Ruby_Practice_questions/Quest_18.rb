def count(arr)
  even = 0
  arr.each do |ele|
    if ele.to_s.length % 2 == 0
      even += 1
    end
  end
  return even
end

arr = []

puts "Enter Array: "

while true
  num = gets.chomp
  if num.empty?
    break
  end

  arr.push(num.to_i)
end

print arr
puts

puts count arr
