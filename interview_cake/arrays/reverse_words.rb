# input: string
def reverse_words!(str)
  reverse_chars!(str, 0, str.length - 1)
  start = 0
  (0..str.length).each do |idx|
    if str[idx] == " " || idx == str.length
      reverse_chars!(str, start, idx - 1)
      start = idx + 1
    end
  end
  # reverse_chars!(str, start, str.length - 1)
  return str
end

def reverse_chars!(message, start, finish)
  start_idx = start
  end_idx = finish
  until start_idx >= end_idx
    message[start_idx], message[end_idx] = message[end_idx], message[start_idx]
    start_idx += 1
    end_idx -= 1
  end
  return message
end
# output: string, all words reversed

puts reverse_words!('cake pound steal') # 'steal pound cake'
puts reverse_words!('cake') # 'steal pound cake'
puts reverse_words!(' ') # 'steal pound cake'
puts reverse_words!('dana is the best.') # 'steal pound cake'

#'cake pound steal'
# need to identify idx of spaces
# need to identify # of spaces
# swap two words
