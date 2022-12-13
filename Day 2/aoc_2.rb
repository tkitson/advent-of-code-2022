file = File.open("input.txt")
pairs_arr = file.readlines.map(&:chomp)

sub_arrays = pairs_arr.map { |elem| elem.split }

#  P1

# score = 0

# sub_arrays.each do |sub|
#   if sub[1] == "X"
#     score += 1
#   elsif sub[1] == "Y"
#     score += 2
#   elsif sub[1] == "Z"
#     score += 3
#   end
# end

# pairs_arr.each do |pair|
#   if pair == "A X" || pair == "B Y" || pair == "C Z"
#     score += 3
#   elsif pair == "A Y" || pair == "B Z" || pair == "C X"
#     score += 6
#   end
# end

# P2

score = 0

p2_hash = {
  "A X": 3,
  "B X": 1,
  "C X": 2,
  "A Y": 4,
  "B Y": 5,
  "C Y": 6,
  "A Z": 8,
  "B Z": 9,
  "C Z": 7,
}

pairs_arr.each do |pair|
  score += p2_hash[pair.to_sym]
  end

p score
