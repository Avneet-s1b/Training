def fun(nums, k)
  hash = Hash[]
  count = 0
  nums.each do |x|
    if hash.has_key?(x + k)
      count += hash[x + k]
      puts "#{hash[x + k]} , #{x}"
    end

    if hash.has_key?(x - k)
      count += hash[x - k]
      puts "#{hash[x - k]} , #{x}"
    end

    if hash.has_key?(x)
      hash[x] += 1
    else
      hash.store(x, 1)
    end
  end
  return count
end

puts "Enter Array:"

nums = []

while true
  num = gets.chomp
  if num.empty?
    break
  end
  nums.push(num.to_i)
end

print "Enter value of k: "

k = gets.chomp.to_i

puts fun nums, k
