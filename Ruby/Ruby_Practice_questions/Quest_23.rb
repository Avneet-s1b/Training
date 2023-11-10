def fun(nums)
  nums.each_with_index do |value, index|
    if index == 0
      next
    else
      nums[index] += nums[index - 1]
    end
  end

  return nums
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

print fun nums
puts
