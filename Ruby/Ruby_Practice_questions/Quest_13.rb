def fun(paths)
    paths.flatten!
    paths.delete_at(0)
    paths.each do |city|
        if paths.count(city)==1
            return city
        end
    end
    return "city not found"
end


paths = []
while true
    print "Enter cityA: "
    cityA = gets.chomp
    print "Enter cityB: "
    cityB = gets.chomp

    if cityA.empty? && cityB.empty?
        break
    end

    arr_in = [cityA.rstrip,cityB.rstrip]
    paths.push(arr_in)
end


puts fun paths


    