def fun(str)
  hash = Hash.new
  str.chars.each do |ele|
    if hash.has_key?(ele)
      hash[ele] += 1
    else
      hash[ele] = 1
    end
  end
  flag = false
  len = 0
  hash.keys.each do |key|
    if hash[key] % 2 == 1
      flag = true
      len += hash[key] - 1
    else
      len += hash[key]
    end
  end
  if flag == true
    len += 1
  end
  return len
end

print "Enter String: "

str = gets.chomp

puts fun str
