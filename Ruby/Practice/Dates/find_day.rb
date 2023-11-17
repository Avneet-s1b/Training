require "date"

def get_day(day)
  arr = day.split("/")
  d = Date.new(arr[2].to_i, arr[0].to_i, arr[1].to_i)

  if d.wday == 0
    return "Sunday"
  elsif d.wday == 1
    return "Monday"
  elsif d.wday == 2
    return "Tuesday"
  elsif d.wday == 3
    return "Wednesday"
  elsif d.wday == 4
    return "Thursday"
  elsif d.wday == 5
    return "Friday"
  elsif d.wday == 6
    return "Saturday"
  end
end
