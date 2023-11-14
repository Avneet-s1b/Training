def fun(nums1,nums2)
    return nums1.union(nums2)
end

nums1 = []
puts "Enter the array1 (type end to finish):"
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  nums1.push(s.to_i)
end

nums2 = []
puts "Enter the array2 (type end to finish):"
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  nums2.push(s.to_i)
end

print fun nums1,nums2
puts