file = File.open("input.txt")
lines_arr = file.readlines.map(&:chomp)
num_arr = []
summed = []

lines_arr.each do |line|
  num_arr << line.to_i
end

sliced_arr = num_arr.slice_when { |num| num == 0 }.to_a

sliced_arr.each do |arr|
  summed << arr.sum
end

# part 1

# p summed.each_with_index.max[1]

# p summed[126]

sorted_arr = summed.sort do |a, b|
  b <=> a
end

puts (sorted_arr[0] + sorted_arr[1] + sorted_arr[2])

file.close
