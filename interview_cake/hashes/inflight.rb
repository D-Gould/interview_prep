require 'Set'

# input: integer flight_length, array of integers movie_length
def flight_movie_combo?(flight_length, movie_length)
  movie_set = Set.new

  movie_length.any? do |first_movie_length|
    need_length = flight_length - first_movie_length
    if movie_set.include?(need_length)
      true
    else
      movie_set.add(first_movie_length)
      false
    end
  end
end
# output: boolean

# tests:

puts flight_movie_combo?(100, [30, 60, 90, 70]) # => true
puts flight_movie_combo?(100, [60, 90, 30, 70]) # true
puts flight_movie_combo?(50, [30, 60, 90, 70]) # false
puts flight_movie_combo?(100, [30, 60, 80, 10]) # false
puts flight_movie_combo?(100, [100, 30, 60, 90]) # false
puts flight_movie_combo?(100, [30, 69, 50]) # false
puts flight_movie_combo?(50, [25, 25, 10]) # true
puts flight_movie_combo?(50, [50, 10, 20]) # false
