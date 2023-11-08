def unique_styles(albums)
  arr = []
  (0..albums.length - 1).each do |x|
    music = albums[x]
    new_arr = music.split(",")
    arr2 = arr | new_arr
    arr = arr2
  end
  return arr.length
end
