print "Enter the String: "

str = gets.chomp

arr = str.split(" ")

i = 0
j = arr.length - 1

# puts arr
while i < j
  temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
  i += 1
  j -= 1
end

puts arr.join(" ")
