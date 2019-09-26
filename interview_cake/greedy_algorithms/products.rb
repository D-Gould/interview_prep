# input: array of integers
def get_products_of_all_ints_except_at_index(arr)
  result = []
  prod_up_to_now = 1

  arr.each_with_index do |num, idx|
    result[idx] = prod_up_to_now
    prod_up_to_now *= num
  end

  prod_up_to_now = 1
  idx = arr.length - 1
  while idx >= 0 do
    num = arr[idx]
    result[idx] *= prod_up_to_now
    prod_up_to_now *= num
    idx -= 1
  end

  return result
end
# output: array of integers

p get_products_of_all_ints_except_at_index([1, 2, 6, 5, 9]) # [540, 270, 90, 108, 60]
p get_products_of_all_ints_except_at_index([1,7,3,4]) # [84, 12, 28, 21]
p get_products_of_all_ints_except_at_index([1,-7,3,4]) # [-84, 12, -28, -21]
p get_products_of_all_ints_except_at_index([1,1, 2, 5, 6]) # [60, 60, 30, 12, 10]

# map.with_index arr |_, idx|
  # prod_except(arr, idx)
    # result = 1
    # (0...arr.length).each do |index|
    #   next if index == idx
    #   result = result * arr[index]


# product
# arr.map do |e|
  # product / e
