def time_adjust(now, hrs, min, sec)
  arr = now.split(":")
  arr[0] = arr[0].to_i + hrs
  arr[1] = arr[1].to_i + min
  arr[2] = arr[2].to_i + sec

  arr[1] += arr[2] / 60
  arr[2] = arr[2] % 60

  arr[0] += arr[1] / 60
  arr[1] = arr[1] % 60

  arr[0] = arr[0] % 24

  if arr[0].to_s.length == 1
    arr[0] = "0" + arr[0].to_s
  end

  if arr[1].to_s.length == 1
    arr[1] = "0" + arr[1].to_s
  end

  if arr[2].to_s.length == 1
    arr[2] = "0" + arr[2].to_s
  end

  return arr.join(":")
end
