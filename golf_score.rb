### Golf Score Tabulator

# Here's how you did:
#
# ```no-highlight
# Hole 1 (Par 5): 7
# Hole 2 (Par 4): 5
# Hole 3 (Par 3): 3
# Hole 4 (Par 4): 4
# Hole 5 (Par 4): 4
# Hole 6 (Par 3): 2
# Hole 7 (Par 4): 5
# Hole 8 (Par 5): 5
# Hole 9 (Par 4): 5
# Hole 10 (Par 5): 7
# Hole 11 (Par 4): 4
# Hole 12 (Par 4): 4
# Hole 13 (Par 3): 3
# Hole 14 (Par 4): 5
# Hole 15 (Par 4): 5
# Hole 16 (Par 4): 4
# Hole 17 (Par 3): 3
# Hole 18 (Par 5): 6
# ```

# Utilize compound data structures to calculate your score.
golf_scores = [{par: 5, score: 7}]
golf_scores << {par: 4, score: 5}
golf_scores << {par: 3, score: 3}
golf_scores << {par: 4, score: 4}
golf_scores << {par: 4, score: 4}
golf_scores << {par: 3, score: 2}
golf_scores << {par: 4, score: 5}
golf_scores << {par: 5, score: 5}
golf_scores << {par: 4, score: 5}
golf_scores << {par: 5, score: 7}
golf_scores << {par: 4, score: 4}
golf_scores << {par: 4, score: 4}
golf_scores << {par: 3, score: 3}
golf_scores << {par: 4, score: 5}
golf_scores << {par: 4, score: 5}
golf_scores << {par: 4, score: 4}
golf_scores << {par: 3, score: 3}
golf_scores << {par: 5, score: 6}
# puts golf_scores.length
total_strokes = 0
total_par = 0
golf_scores.each do |hole|
  hole.each do |key, value|
    if key == :par
      total_par += value
    else key == :score
      total_strokes += value
    end
  end
end
puts "Total strokes: #{total_strokes}"
puts "Total par: #{total_par}"
if total_par > total_strokes
  puts "You were #{total_par - total_strokes} below par."
elsif total_strokes > total_par
  puts "You were #{total_strokes - total_par} above par."
else
  puts "You were right on par!"
end

# Here's what the sample output to your terminal might look like (for the data above):
#
# ```no-highlight
# Total Strokes: 81
# Total Par: 72
# You were 9 over par.
# ```
#
# Your tabulation program should work for **any golf scorecard**,
# so be sure to play with different values to ensure your
# program works correctly!
#
# {% show_hint %}
# * Use an array of hashes where each hash represents the par value
#   and score of a given hole
# {% endshow_hint %}
