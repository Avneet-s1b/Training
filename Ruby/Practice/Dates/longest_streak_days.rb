require "date"

def longest_streak(arr)
  hash = Hash.new
  for i in 0..arr.length - 1
    hash.store(Date.strptime(arr[i][:date], "%Y-%m-%d"), 1)
  end
  m = 0
  hash.keys.each do |date|
    count = 0
    while hash.has_key?(date)
      count += 1
      date += 1
    end
    m = [m, count].max
  end

  return m
end
