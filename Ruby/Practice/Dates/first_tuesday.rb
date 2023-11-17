require "date"

def first_tuesday_of_the_month(year, month)
  d = Date.new(year, month)
  while true
    if d.wday == 2
      return d.strftime("%Y-%m-%d")
    end
    d += 1
  end
end
