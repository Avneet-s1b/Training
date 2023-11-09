def fun(num)
  arr = [0, 1]
  for i in 2..num
    arr.push(arr[i - 1] + arr[i - 2])
  end
  return arr
end

print "Enter num: "

num = gets.chomp.to_i

if num < 0
  puts "num cant be less than 0"
else
  print fun num
  puts
end
