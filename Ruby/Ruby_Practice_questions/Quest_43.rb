require "date"

def fun(date)
  arr = date.split("/")
  d = Date.new(arr[2].to_i, arr[0].to_i, arr[1].to_i)

  case d.wday
  when 0
    return "sunday"
  when 1
    return "Monday"
  when 2
    return "Tuesday"
  when 3
    return "Wednesday"
  when 4
    return "Thursday"
  when 5
    return "Friday"
  when 6
    return "Saturday"
  end
end

print "Enter Date: "

date = gets.chomp

puts fun date
