module DayFour
  def self.part_one(input : String)
    input.strip.lines.reduce(0) do |acc, line|
      a, b = line.split(',')
      a_parts = a.split('-').map(&.to_i)
      b_parts = b.split('-').map(&.to_i)
      # If the one range completely contains the other, add one to the accumulator
      if (a_parts.first <= b_parts.first && a_parts.last >= b_parts.last) ||
         (b_parts.first <= a_parts.first && b_parts.last >= a_parts.last)
        acc + 1
      else
        acc
      end
    end
  end

  def self.part_two(input : String)
    input.strip.lines.reduce(0) do |acc, line|
      a, b = line.split(',')
      a_parts = a.split('-').map(&.to_i)
      b_parts = b.split('-').map(&.to_i)
      # If either range overlaps at all, add one to the accumulator
      if (a_parts.first <= b_parts.first && a_parts.last >= b_parts.first) ||
         (b_parts.first <= a_parts.first && b_parts.last >= a_parts.first)
        acc + 1
      else
        acc
      end
    end
  end
end
