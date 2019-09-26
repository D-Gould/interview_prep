# input: 3 arrs
def first_come_first_served?(take_out_arr, dine_in_arr, served_arr)
  return false if take_out_arr.length + dine_in_arr.length != served_arr.length
  next_take_out_idx = 0
  next_dine_in_idx = 0
  
  served_arr.each do |order|
    if take_out_arr[next_take_out_idx] == order
      next_take_out_idx += 1
    elsif dine_in_arr[next_dine_in_idx] == order
      next_dine_in_idx += 1
    else
      return false
    end
  end
  return true
 end
# output: boolean


puts first_come_first_served?([1, 3, 5], [2, 4, 6], [1, 2, 4, 6, 5, 3]) # false
puts first_come_first_served?([1, 3, 5], [2, 4, 6], [1, 2, 4, 6, 3, 5]) # true
puts first_come_first_served?([1], [2, 4, 6], [1, 2, 4, 6]) # true
puts first_come_first_served?([1, 3, 5], [2, 4, 6], [1, 2, 4, 6]) # false
puts first_come_first_served?([], [2, 4, 6], [2, 4, 6]) # true
# iterate through served_arr
