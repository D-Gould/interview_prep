# input: string
def build_word_cloud_data(str)
  hash = Hash.new
  letters = 'abcdefghijklmnopqrstuvwxyz'
  word = ""
  (0...str.length).each do |idx|
    char = str[idx].downcase
    if letters.include?(char)
      word = word + char
    else
      hash[word] = hash[word] ? hash[word] += 1 : 1 if word != ""
      word = ""
    end
  end
  return hash
end
# output: hash with keys = words in the str, values = # times word appears
def split_words(str)

end

puts build_word_cloud_data("After beating the eggs, Dana read the next step:")
# { after: 1, beating: 1, the: 2, eggs: 1, dana: 1, read: 1, next: 1, step: 1 }
puts build_word_cloud_data("Add milk and eggs, then add flour and sugar.")
# { add: 2, milk: 1, and: 2, eggs: 1, then: 1, flour: 1, sugar: 1}
