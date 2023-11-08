def array_of_multiples(num, length)
  arr = []
  if length == 0
    return arr
  end

  (1..length).each do |x|
    arr.push(num * x)
  end
  return arr
end
