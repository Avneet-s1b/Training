def fun(str)
  hash = Hash[]

  str.chars.each do |ele|
    if hash.has_key?(ele)
      hash[ele] += 1
    else
      hash[ele] = 1
    end
  end
  arr = hash.values
  for i in 0..arr.length - 1
    if i > 0
      if arr[i] != arr[i - 1]
        return false
      end
    end
  end
  return true
end

str = gets.chomp

puts fun str
