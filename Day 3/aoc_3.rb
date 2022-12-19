file = File.open("input.txt")
arr = file.readlines.map(&:chomp)

total = 0

letters = ('a'..'z').to_a | ('A'..'Z').to_a
alphabet_hash = {}
letters.each_with_index do |letter, index|
  alphabet_hash[letter] = index + 1
end

halves = []

arr.each do |bag|
 halves << bag.chars.each_slice(bag.size / 2).map(&:join)
end

halves.each do |half|
  common_chars = half[0].chars & half[1].chars
  common_chars.each do |char|
  total += alphabet_hash[char[0]]
  end
end
p total
