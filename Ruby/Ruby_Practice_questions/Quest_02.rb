def fun(idx, str)
  if idx == str.length
    return ""
  end

  rec_str = fun(idx + 1, str)

  return rec_str + str[idx]
end

puts "enter String"
str = gets.chomp

arr = str.chars

puts fun 0, arr
