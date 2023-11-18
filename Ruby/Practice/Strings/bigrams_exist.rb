def can_find(bigrams, words)
  arr = words.join("")
  bigrams.each do |str|
    if arr.include?(str) == false
      return false
    end
  end
  return true
end
