def fun(str, hash)
  h = Hash.new
  str.chars.each do |ele|
    if h.has_key?(ele)
      h[ele] += 1
    else
      h[ele] = 1
    end
  end

  count = 1000
  hash.keys.each do |key|
    temp = 0
    if h.has_key?(key) == false
      puts true
      return 0
    else
      temp = h[key] / hash[key]
    end

    count = [count, temp].min
  end

  return count
end

hash = Hash.new

word = "balloon"

word.chars.each do |ele|
  if hash.has_key?(ele)
    hash[ele] += 1
  else
    hash[ele] = 1
  end
end

print "Enter String: "

str = gets.chomp

puts fun str, hash
