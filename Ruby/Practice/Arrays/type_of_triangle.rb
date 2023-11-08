def get_triangle_type(arr)
  arr.sort!
  if arr.length != 3
    return "not a triangle"
  elsif arr[0] == arr[1] && arr[1] == arr[2]
    return "equilateral"
  elsif arr[0] == arr[1] || arr[1] == arr[2]
    return "isosceles"
  else
    return "scalene"
  end
end
