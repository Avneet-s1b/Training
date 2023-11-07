str = "This is a typical sentence"

words = str.split(" ")
max = ""
for i in 0..words.length-1
    word = words[i]
    if word.length>max.length
        max = word
    end
end

puts max