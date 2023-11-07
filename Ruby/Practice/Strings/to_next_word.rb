str = "bye"

arr = str.chars

for i in 0..arr.length - 1
  word = arr[i]
  arr[i] = word.succ
end

puts arr.join
