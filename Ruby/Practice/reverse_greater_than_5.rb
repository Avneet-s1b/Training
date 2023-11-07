str = "This is a typo sentence."

ans = ""

words = str.split(" ")
for i in 0..words.length-1
    word = words[i]
    if word.length>=5
        words[i] = word.reverse
    end
end

puts words.join(" ")