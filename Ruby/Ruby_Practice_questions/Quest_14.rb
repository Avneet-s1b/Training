def factorial(n)
  if n == 0
    return 0
  end

  ans = 1
  while n > 0
    ans *= n
    n -= 1
  end
  return ans
end

def fun(num)
  arr = []
  for i in 0..num
    arr.push(factorial(i))
  end
  return arr
end

print "Input number: "

num = gets.chomp.to_i

print fun num

puts
