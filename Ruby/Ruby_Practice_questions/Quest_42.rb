def fun(time1, time2)
  st = time1.split(":")
  en = time2.split(":")

  total_min_st = st[0].to_i * 60 + st[1].to_i
  total_min_en = en[0].to_i * 60 + en[1].to_i

  total_time = (total_min_en - total_min_st).abs

  arr = []
  arr[0] = total_time / 60
  arr[1] = total_time % 60

  return arr
end

print "Enter start time in format (hh:mm) - "

time1 = gets.chomp

print "Enter end time in format (hh:mm) - "

time2 = gets.chomp

ans = fun time1, time2

puts "Time difference is #{ans[0]} hours and #{ans[1]} minutes"
