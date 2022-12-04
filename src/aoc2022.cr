require "./aoc2022/*"

puts "Day one, part one:"
input1 = File.read("src/inputs/day_one.txt")
puts "Answer: #{DayOne.part_one(input1)}"
puts "Day one, part two:"
puts "Answer: #{DayOne.part_two(input1)}"
puts
puts "Day two, part one:"
input2 = File.read("src/inputs/day_two.txt")
puts "Answer: #{DayTwo.part_one(input2)}"
puts "Day two, part two:"
puts "Answer: #{DayTwo.part_two(input2)}"
puts
puts "Day three, part one:"
input2 = File.read("src/inputs/day_three.txt")
puts "Answer: #{DayThree.part_one(input2)}"
puts "Day three, part two:"
puts "Answer: #{DayThree.part_two(input2)}"
