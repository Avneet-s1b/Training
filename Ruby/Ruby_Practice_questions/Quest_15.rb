def isPrime(num)
  d = num - 1
  while d > 1
    if num % d == 0
      return false
    end
    d -= 1
  end
  return true
end

def fun(arr)
  res = []
  arr.each do |x|
    if x == 1
      next
    end
    if isPrime(x)
      res.push(x)
    end
  end
  return res
end

print "Input array: "
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
