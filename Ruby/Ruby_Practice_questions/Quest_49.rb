require "date"

def palindromic_date(given_date)
  date_format = Date.strptime(given_date, "%d/%m/%Y")
  given_date.gsub!("/", "")
  other_format_date = date_format.strftime("%m%d%Y")
  puts given_date
  puts other_format_date
  if given_date == given_date.reverse && other_format_date == other_format_date.reverse
    return true
  end

  return false
end

print "Enter the date in (dd/mm/yyyy) format:"
given_date = gets.chomp

puts palindromic_date(given_date)
