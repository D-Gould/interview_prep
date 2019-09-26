# input: array of integers
def in_place_shuffle(array)
  max_idx = array.length - 1
  idx = 0
  until idx > max_idx
    random_idx = get_random(0, max_idx - idx)
    element = array.delete_at(random_idx)
    array.push(element)
    idx += 1
  end
  array
end

def get_random(floor, ceiling)
  rand(floor..ceiling)
end
# output: array of integers


p in_place_shuffle([1,2,3,4,5])
p in_place_shuffle([1])
p in_place_shuffle([1,1,2,3,1])
p in_place_shuffle([])
