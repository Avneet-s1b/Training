def fun(k, nums)
  nums.sort! { |x, y| y <=> x }

  if k < 0 || k >= nums.length
    return "k must be in the range 0f 0 to length of array-1"
  end

  for i in 0..nums.length - 1
    if i == k - 1
      return nums[i]
    end
  end
end

puts "Enter the array nums: "

nums = []

while true
  num = gets.chomp
  if num.empty?
    break
  end
  nums.push(num)
end

puts "Enter the value of k: "

k = gets.chomp

puts fun k.to_i, nums
