def missing_number(nums)
  hash = Hash.new
  nums.each do |num|
    hash[num] = 1
  end

  for i in 0..nums.length
    if !hash.has_key?(i)
      return i
    end
  end

  return nums.length + 1
end

nums = []
puts "Enter the array (type end to finish):"
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  nums.push(s.to_i)
end

puts missing_number nums
