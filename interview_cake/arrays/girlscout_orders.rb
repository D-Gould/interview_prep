def merge_arrays(arr1, arr2)
  new_arr = []
  idx1 = 0
  idx2 = 0
  while (idx1 < arr1.length) || (idx2 < arr2.length)
    if arr2[idx2] == nil || arr1[idx1] < arr2[idx2]
      new_arr.push(arr1[idx1])
      idx1 += 1
    else
      new_arr.push(arr2[idx2])
      idx2 += 1
    end
  end
  return new_arr
end

my_array     = [3, 4, 6, 10, 11, 15, 16, 21]
alices_array = [1, 5, 8, 12, 14, 19]

p merge_arrays(my_array, alices_array)

# arrays are sorted, so n < n+1

# [1, 3, 4]
# [2, 5, 6]
