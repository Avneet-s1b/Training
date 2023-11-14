def fun(arr)
  i = 0
  j = 0
  while i < arr.length
    if arr[i] % 2 == 0
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
      i += 1
      j += 1
    else
      i += 1
    end
  end
  return arr
end

arr = []

while true
  num = gets.chomp
  if num.empty?
    break
  end
  arr.push(num.to_i)
end

print fun arr
puts
