def max_product(nums)
  max = -1000000000000
  lp = 1
  rp = 1
  (0..nums.length - 1).each do |i|
    lp = lp != 0 ? lp : 1
    rp = rp != 0 ? rp : 1

    lp = lp * nums[i]
    rp = rp * nums[nums.length - 1 - i]

    if max < lp
      max = lp
    end

    if max < rp
      max = rp
    end
  end

  return max
end

puts "Enter array: "

nums = []

while true
  num = gets.chomp
  if num.empty?
    break
  end
  nums.push(num.to_i)
end

puts max_product nums
