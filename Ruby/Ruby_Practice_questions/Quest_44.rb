require 'date'

def fun(month,year)
    if Date.leap?(year) && month==2
        puts "29"
        return
    elsif Date.leap?(year) == false && month==2
        puts "28"
        return
    end

    if month==1 || month==3 || month==5 || month==7 || month==8 || month==10 || month==12
        puts "31"
        return
    else
        puts"30"
        return
    end 
end

puts "enter month:"

month = gets.chomp.to_i

puts "enter year: "

year = gets.chomp.to_i

fun month,year