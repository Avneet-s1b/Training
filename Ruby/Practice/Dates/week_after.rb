require "date"

def week_after(d)
  date = Date.strptime(d, "%d/%m/%Y")
  date += 7
  return date.strftime("%d/%m/%Y")
end
