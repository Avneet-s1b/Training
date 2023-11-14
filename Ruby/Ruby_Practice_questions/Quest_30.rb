def pangram(str)
  hash = Hash.new
  str.gsub!(/\s+/, "")
  characters = str.chars
  characters.each do |char|
    if hash.key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  for i in "a".."z"
    if !hash.has_key?(i)
      return false
    end
  end

  return true
end

print "Enter sentence:"
str = gets.chomp
puts pangram str
