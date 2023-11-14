def fun(num)
  hash = Hash["I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000]
  i = 0
  arr = num.chars
  ans = hash[arr[0]]
  for i in 1..arr.length - 1
    if hash[arr[i]] <= hash[arr[i - 1]]
      ans += hash[arr[i]]
    else
      diff = hash[arr[i]] - hash[arr[i - 1]]
      ans = ans - hash[arr[i - 1]]
      ans += diff
    end
  end
  return ans
end

print "Enter number:"

num = gets.chomp

puts fun num

# hash = Hash["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]

# puts hash[:"I"]
