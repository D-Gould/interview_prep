
# input: array of strings
def find_rotation_point(arr)
  first_idx = 0
  last_idx = arr.length - 1
  guess_idx = (last_idx - first_idx) / 2
  first_word = arr[0]
  until first_idx == last_idx do
    guess_word = arr[guess_idx]
    word_before_guess = arr[guess_idx - 1]

     if guess_word < word_before_guess
       return guess_idx
     elsif guess_word < first_word
       last_idx = guess_idx
       guess_idx = (last_idx - first_idx) / 2
     else
       first_idx = guess_idx
       guess_idx = guess_idx + ((last_idx - first_idx) / 2.to_f).ceil
     end
  end
  return 0
end


words = [
    'ptolemaic',
    'retrograde',
    'supplant',
    'undulate',
    'xenoepist',
    'asymptote',  # <-- rotates here!
    'babka',
    'banoffee',
    'engender',
    'karpatka',
    'othellolagkage',
]
words2 = [
  'asymptote',  # <-- rotates here!
  'babka',
  'banoffee',
  'engender',
  'karpatka',
  'othellolagkage',
]
words3 = [
    'ptolemaic', # <-- rotates here!
    'retrograde',
    'supplant',
    'undulate',
    'xenoepist',
  ]
words4 = [
  'xenoepist',
  'asymptote',  # <-- rotates here!
  'babka',
  'banoffee',
  'engender',
  'karpatka',
  'othellolagkage',
]
words5 = [
  'ptolemaic',
  'retrograde',
  'supplant',
  'undulate',
  'xenoepist',
  'asymptote',  # <-- rotates here!
  'babka',
]
words6 = [
  'ptolemaic',
  'retrograde',
  'supplement',
  'sacred' # <-- rotates here!
]

puts find_rotation_point(words) # 5
puts find_rotation_point(words4) # 1
puts find_rotation_point(words5) # 5
puts find_rotation_point(words6) # 3
puts find_rotation_point(words3) # 0
puts find_rotation_point(words2) # 0




# find the point where
# arr[idx][0] < arr[idx + 1][0] && arr[idx][0] > arr[idx - 1][0]
