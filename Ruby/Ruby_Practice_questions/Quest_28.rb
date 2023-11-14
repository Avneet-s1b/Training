def fun(arr)
  hash = Hash[]
  count = 0
  arr.each do |ele|
    if hash.has_key?(ele)
      count += hash[ele]
      hash[ele] += 1
    else
      hash.store(ele, 1)
    end
  end
  return count
end

arr = []
puts "Enter Array:"
while true
  num = gets.chomp
  if num.empty?
    break
  end
  arr.push(num.to_i)
end

puts fun arr
