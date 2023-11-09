def fun(s, part)
  arrS = s.chars
  arrP = part.chars
  return (arrS - arrP).join("")
end

puts "Enter string s: "

s = gets.chomp

puts "Enter string part: "

part = gets.chomp

puts fun s, part
