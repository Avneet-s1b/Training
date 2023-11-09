puts "Enter String s: "

s = gets.chomp

puts "Enter String t: "

t = gets.chomp

s_arr = s.split("")
t_arr = t.split("")

def fun(s_arr, t_arr)
  if s_arr.length != t_arr.length
    return false
  end
  t_arr.each do |char|
    if s_arr.include?(char) == false
      return false
    end
  end

  return true
end

puts fun s_arr, t_arr
