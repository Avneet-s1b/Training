def anagram(s, t)
  count = 0
  hash = Hash.new
  s.chars.each do |char|
    if hash.has_key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  t.chars.each do |char|
    if hash.has_key?(char)
      if hash[char] == 1
        hash.delete(char)
      else
        hash[char] -= 1
      end
    else
      count += 1
    end
  end

  return count
end

print "Enter first string:"
s = gets.chomp
print "Enter second string:"
t = gets.chomp

puts anagram(s, t)
