def isVowel(char)
  if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" || char == "A" || char == "E" || char == "I" || char == "O" || char == "U"
    return true
  end
  return false
end

puts "Enter the string:"

str = gets.chomp

arr = str.chars

i = 0
j = arr.length - 1

while i < j
  while (i < j && isVowel(arr[i]) == false)
    i += 1
  end

  while (i < j && isVowel(arr[j]) == false)
    j -= 1
  end

  if i < j
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
  end
  i += 1
  j -= 1
end

puts arr.join("")
