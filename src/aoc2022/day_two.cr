module DayTwo
  POINTS = {
    "A X" => 4,
    "A Y" => 8,
    "A Z" => 3,

    "B X" => 1,
    "B Y" => 5,
    "B Z" => 9,

    "C X" => 7,
    "C Y" => 2,
    "C Z" => 6,
  }

  def self.part_one(input)
    input.each_line.sum { |l| POINTS[l] }
  end

  CHOICES = {
    "A" => %w[C A B],
    "B" => %w[A B C],
    "C" => %w[B C A],
  }

  SHAPE_POINTS = {
    "A" => 1,
    "B" => 2,
    "C" => 3,
  }

  def self.part_two(input : String)
    input.each_line.sum do |line|
      line = line.strip
      them, me = line.split(' ')
      points, shape = case me
                      when "X"
                        {0, CHOICES[them][0]}
                      when "Y"
                        {3, CHOICES[them][1]}
                      when "Z"
                        {6, CHOICES[them][2]}
                      else raise "unreachable"
                      end
      points + SHAPE_POINTS[shape]
    end
  end
end
