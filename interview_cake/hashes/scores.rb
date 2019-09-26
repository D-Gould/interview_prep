# input: array of integers, integer (max score)

def sort_scores(unsorted_scores, highest_score)
  result = []
  count_array = [0] * (highest_score + 1)

  unsorted_scores.each do |score|
    count_array[score] += 1
  end

  highest_score.downto(0) do |idx|
    count = count_array[idx]
    (0...count).each do |_|
      result.push(idx)
    end
  end
  
  return result
end
# output: array of integers

p sort_scores([37, 89, 41, 65, 91, 53], 100)
p sort_scores([37, 37, 89, 72], 100)
p sort_scores([37, 0, 89, 72], 100)
p sort_scores([37, 37, 89, 72], 89)
