def fun(arr, k)
  arr.each do |str|
    if arr.count(str) == 1
      k -= 1
      if k == 0
        return str
      end
    end
  end

  return ""
end

arr = []

puts "Enter array:"

while true
  str = gets.chomp
  if str.empty?
    break
  end
  arr.push(str)
end

print "enter value of k: "

k = gets.chomp

puts fun arr, k.to_i
