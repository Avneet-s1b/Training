def fun(arr, tar)
  hash = Hash.new
  for i in 0..arr.length - 1
    if hash.has_key?(arr[i])
      hash[arr[i]][1] = i
    else
      nested_arr = [i, i]
      hash[arr[i]] = nested_arr
    end
  end

  if hash.has_key?(tar) == false
    return [-1, -1]
  else
    return hash[tar]
  end
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

print "Enter target value: "
tar = gets.chomp

print fun arr, tar.to_i
puts
