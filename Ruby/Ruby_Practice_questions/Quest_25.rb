def majele(arr)
  count = 0
  maj = -1
  arr.each do |x|
    if count == 0
      maj = x
      count += 1
    elsif maj == x
      count += 1
    elsif maj != x
      count -= 1
    end
  end

  return maj
end

arr = []

while true
  num = gets.chomp
  if num.empty?
    break
  end
  arr.push(num.to_i)
end

print majele arr
puts
