
# input: array of arrays- all mtg times
def merge_ranges(arrs)
  arrs = arrs.sort_by { |arr| arr[0] }
  idx = 0
  idx2 = 1
  until idx2 == arrs.length
    if (arrs[idx][1] < arrs[idx2][0])
      idx = idx2
      idx2 += 1
    else
      arrs[idx] = [arrs[idx][0], [arrs[idx2][1], arrs[idx][1]].max]
      arrs.delete_at(idx2)
    end
  end
  return arrs
end
# output: condensed set of ranges

p merge_ranges([[1, 10], [2, 6], [3, 5], [7, 9]])
