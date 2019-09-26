# input: array of integers
def highest_product_of_three(arr)
  highest = arr.first(2).max
  lowest = arr.first(2).min
  highest_product_of_2 = arr[0]*arr[1]
  highest_product_of_3 = arr[0]*arr[1]*arr[2]
  lowest_product_of_2 = arr[0]*arr[1]

  arr.each_with_index do |num, idx|
    next if idx == 0 || idx == 1

    highest_product_of_3 = [highest_product_of_3, num*highest_product_of_2, num*lowest_product_of_2].max
    lowest_product_of_2 = [lowest_product_of_2, num*lowest, num*highest].min
    highest_product_of_2 = [highest_product_of_2, num*highest, num*lowest].max
    highest = [highest, num].max
    lowest = [lowest, num].min
  end
  return highest_product_of_3
end
# output: integer


puts highest_product_of_three([3,4,2,5,1,7,2]) # 60
puts highest_product_of_three([2,3,4,5]) # 60
puts highest_product_of_three([3,4,5,2]) # 60
puts highest_product_of_three([2,3,-4,5]) # 30
puts highest_product_of_three([2,-3,-4,5,-6]) # 120
puts highest_product_of_three([3,1,3,3,1]) # 27

# find 3 greatest integers



# highest = 4 // 5
# highest_product_of_2 = 12 //
# highest_product_of_3 = 24 //

# lowest = 2 //
# lowest_product_of_2 = 6 //
