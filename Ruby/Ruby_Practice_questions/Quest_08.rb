print "Enter String: "

str = gets.chomp

def fun(str)
  str.downcase!
  arr = []
  str.chars.each do |x|
    if x =~ /\A\d+\Z/
      next
    else
      arr.push(x)
    end
  end
  i = 0
  j = arr.length - 1
  while i < j
    if arr[i] != arr[j]
      return false
    end
    i += 1
    j -= 1
  end

  return true
end

puts fun str
