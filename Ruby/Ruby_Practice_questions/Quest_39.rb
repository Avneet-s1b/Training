def fun(arr1, arr2, x)
  hash = Hash.new
  arr1.each do |ele|
    hash[ele] = 1
  end

  arr2.each do |ele|
    if hash.has_key?((x - ele))
      puts "#{x - ele} - #{ele}"
    end
  end
end

puts "Enter Array1: "

arr1 = []

while true
  _num = gets.chomp
  if _num.empty?
    break
  end
  arr1.push(_num.to_i)
end

puts "Enter Array2: "

arr2 = []

while true
  _num = gets.chomp
  if _num.empty?
    break
  end
  arr2.push(_num.to_i)
end

print "Enter value of x:"

x = gets.chomp

fun arr1, arr2, x.to_i
