def fun(str, words)
  mystr = ""

  words.each do |word|
    mystr += word
    if mystr.length > str.length
      return false
    end

    if str.eql?(mystr)
      return true
    end
  end

  return false
end

puts "Enter the string: "

str = gets.chomp

puts "Enter the Array: "

words = []

while true
  word = gets.chomp
  if word.empty? == true
    break
  end
  words.push(word)
end

puts fun str, words
