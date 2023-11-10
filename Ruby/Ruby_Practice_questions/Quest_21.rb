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

def find_prime(num)
  arr = []
  for i in 1..num
    if isPrime(i)
      arr.push(i)
    end
  end
  return arr
end

print "Enter number: "

num = gets.chomp

print find_prime num.to_i
puts
