def fun(arr)
    new_arr = []
    arr.each do |x|
        if x.is_a?(Integer)
            new_arr.push(x)
        end
    end

    return new_arr
end

print "Enter arr input with ',' between elements:"
str = gets.chomp

array = []
str.split(',').each do |elem|
    if elem =~ /\A\d+\z/
        array.push(elem.to_i)
    else 
        array.push(elem)
    end
end



narr = fun(array)

for i in 0..narr.length-1 do
    print "#{narr[i]},"
end
puts

