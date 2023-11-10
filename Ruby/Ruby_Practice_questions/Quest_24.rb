def fun(mat)
  sum = 0
  i = 0
  j = 0
  while i < mat.length && j < mat.length
    sum += mat[i][j]
    i += 1
    j += 1
  end

  i = mat.length - 1
  j = 0

  while i >= 0 && j < mat.length
    if i != j
      sum += mat[i][j]
    end
    i -= 1
    j += 1
  end

  return sum
end

mat = []

while true
  arr = []
  puts "Enter new row:"
  while true
    num = gets.chomp
    if num.empty?
      break
    end
    arr.push(num.to_i)
  end
  if arr.length == 0
    break
  end
  mat.push(arr)
end

print fun mat
puts
