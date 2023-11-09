def isPal(num)
  i = 0
  j = num.length - 1
  arr = num.chars
  while i < j
    if arr[i] != arr[j]
      return false
    end
    i += 1
    j -= 1
  end

  return true
end

def fun(limit)
  arr = []

  while true
    if arr.length == 15
      break
    end
    if limit < 0
      return "Increase upper limit"
    end
    if isPal(limit.to_s)
      arr.push(limit)
    end
    limit -= 1
  end

  return arr
end

print "Upper limit: "

limit = gets.chomp.to_i

print fun(limit)
puts
