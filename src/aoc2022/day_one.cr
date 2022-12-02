module DayOne
  def self.get_totals(input : String)
    elves = input.strip.split("\n\n")
    elves.map do |elf|
      elf.split('\n').map(&.to_i).sum
    end
  end

  def self.part_one(input : String)
    get_totals(input).sort.reverse[0]
  end

  def self.part_two(input : String)
    get_totals(input).sort.last(3).sum
  end
end
