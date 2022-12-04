module DayThree
  # Constant of character priorities. a through z have a priority of 1 through 26
  # respectively. A through Z have a priority of 27 through 52 respectively.
  # The space is going to represent 0.
  PRIORITY = [' '] + ('a'..'z').to_a + ('A'..'Z').to_a

  def self.part_one(input : String)
    chars = input.strip.lines.map do |line|
      size = line.size
      chars2 = line.chars
      first_half = chars2[0, size // 2]
      second_half = chars2[size // 2, size]
      common_chars = first_half & second_half
      # There should only be one
      common_chars.first
    end

    # Sum the priority of each character
    chars.sum { |char| PRIORITY.index!(char) }
  end

  def self.part_two(input : String)
    input = input.strip
    chunks = input.lines.in_groups_of(3)
    chunks.map do |chunk|
      # Workaround since `in_groups_of` returns Array(T | Nil)
      chunk = chunk.map(&.to_s)
      # Get common characters between the 3 strings
      common_chars = chunk[0].chars & chunk[1].chars & chunk[2].chars
      # Really there should only be one
      char = common_chars.first
      # Get the priority of the character
      PRIORITY.index!(char)
    end.sum
  end
end
