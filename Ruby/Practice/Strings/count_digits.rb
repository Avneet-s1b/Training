def digit_occurrences(min, max, digit)
  ans = 0
  (min..max).each do |num|
    ans += num.to_s.chars.count(digit.to_s)
  end
  return ans
end
