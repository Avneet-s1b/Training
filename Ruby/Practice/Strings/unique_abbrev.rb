def unique_abbrev(abbs, words)
  abbs.each do |abb|
    count = 0
    words.each do |word|
      if word.start_with?(abb) == true
        count += 1
      end
    end
    if count > 1
      return false
    end
  end
  return true
end
