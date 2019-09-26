require 'Set'

def any_permutation_is_a_palindrome?(str)
  # does every char have an identical pair char, can be one exception
  # create hash with hash[char] = count
  odd_char_set = Set.new
  idx = 0
  while idx < str.length
    char = str[idx]
    odd_char_set.include?(char) ? odd_char_set.delete(char) : odd_char_set.add(char)
    idx += 1
  end
  return odd_char_set.size <= 1
end


#tests
puts any_permutation_is_a_palindrome?("civic") # true
puts any_permutation_is_a_palindrome?("ivicc") # true
puts any_permutation_is_a_palindrome?("civil") # false
puts any_permutation_is_a_palindrome?("livci") # false
puts any_permutation_is_a_palindrome?("littil") # true
puts any_permutation_is_a_palindrome?("cc") # true
puts any_permutation_is_a_palindrome?("cciivv") # true
puts any_permutation_is_a_palindrome?("l") # true
puts any_permutation_is_a_palindrome?("ccivvic") # true
