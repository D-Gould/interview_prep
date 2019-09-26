# input: string
def reverse_string(str)
  idx = 0
  (str.length - 1).times do |_|
    str.insert(idx, str[-1])
    str = str[0..-2]
    idx += 1
  end
  return str
end
# output: same string, letters reversed

puts reverse_string("dane") # "enad"
puts reverse_string("d") # "d"
puts reverse_string("") # ""
puts reverse_string("string") # "gnirts"
puts reverse_string("dana is cool") # "looc si anad"
puts reverse_string("dana-rocks!") # "!skcor-anad"

#
# "dane" pop e, move to 0
# "edan" pop n, move to 1
# "enda" pop a, move to 2
# "enad"
