require "./aoc2022/*"

DAYS = %w[one two three four]

{% for day in DAYS %}
puts "Day {{ day.id }}, part one:"
input1 = File.read("src/inputs/day_{{ day.id }}.txt")
puts "Answer: #{Day{{ day.capitalize.id }}.part_one(input1)}"
puts "Day {{ day.id }}, part two:"
puts "Answer: #{Day{{ day.capitalize.id }}.part_two(input1)}"
puts
{% end %}
