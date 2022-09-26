test_array = [17,3,6,9,15,8,6,1,1]

def find_biggest_diff(array)
  max = array.max
  min = array.min
  top_five_min = array.min(5)
  top_five_max = array.max(5)
  min_index = array.index(min)
  max_index = array.index(max)
  until min_index < max_index
    if min_index > max_index
      top_five_min.shift
      min = top_five_min.min
      min_index = array.index(min)
    end
    if max_index < min_index
      top_five_max.shift
      max = top_five_max.max
      max_index = array.index(max)
    end
  end
  sum = max - min
  puts "Buy on #{min} and sell on #{max} for a difference of #{sum}"
end

find_biggest_diff(test_array)