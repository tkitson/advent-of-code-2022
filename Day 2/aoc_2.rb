file = File.open("input.txt")
pairs_arr = file.readlines.map(&:chomp)

score = 0

sub_arrays = pairs_arr.map { |elem| elem.split }

sub_arrays.each do |sub|
  if sub[1] == "X"
    score += 1
  elsif sub[1] == "Y"
    score += 2
  elsif sub[1] == "Z"
    score += 3
  end
end

pairs_arr.each do |pair|
  if pair == "A X" || pair == "B Y" || pair == "C Z"
    score += 3
  elsif pair == "A Y" || pair == "B Z" || pair == "C X"
    score += 6
  end
end

p score
