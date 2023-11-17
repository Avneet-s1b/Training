require "date"

def hemisphere_season(hemisphere, date)
  h = Date._parse(date)
  mon = h[:mon]
  day = h[:mday]
  if mon == 3 || mon == 4 || mon == 5
    if hemisphere == "N"
      return "Spring"
    else
      return "Autumn"
    end
  elsif mon == 6 || mon == 7 || mon == 8
    if hemisphere == "N"
      return "Summer"
    else
      return "Winter"
    end
  elsif mon == 9 || mon == 10 || mon == 11
    if hemisphere == "N"
      return "Autumn"
    else
      return "Spring"
    end
  elsif mon == 12 || mon == 1 || mon == 2
    if hemisphere == "N"
      return "Winter"
    else
      return "Summer"
    end
  end
end
