def fun(str)
  hash = Hash[]

  str.chars.each do |x|
    if hash.has_key?(x)
      hash[x] += 1
    else
      hash.store(x, 1)
    end
  end

  str.chars.each do |x|
    if hash[x] == 1
      return x
    end
  end
  return -1
end

print "Enter String: "

str = gets.chomp

puts fun (str)
