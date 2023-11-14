def fun(arr, tar)
  hash = Hash[]
  for i in 0..arr.length
    if hash.has_key?(tar - arr[i])
      return [i, hash[tar - arr[i]]]
    else
      hash.store(arr[i], i)
    end
  end

  return [-1, -1]
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

print "Enter number: "
tar = gets.chomp.to_i

print fun arr, tar

puts
