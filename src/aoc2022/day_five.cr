module DayFive
  def self.parse_input(input : String)
    input, instructions = input.split("\n\n")

    rows = input.lines[0..-2]
    rows = rows.map do |row|
      row
        # Empty slots will be represented with a period
        .gsub("    ", ".")
        # Remove all spaces and square brackets
        .gsub(/[\s\]\[]/, "")
        # Split into rows by character
        .split("")
    end

    # Convert to columns and remove the empty items (marked with a period)
    cols = rows.transpose.map { |col| col.reject { |item| item == "." } }

    # Now to parse the instructions
    instructions = instructions.lines.map do |line|
      line
        # Remove all words. We know the order they're in
        .gsub(/[a-z]+/, "")
        # Replace all subsequent spaces with a singular space
        .gsub(/\s+/, " ")
        # Remove any leading or trailing spaces
        .strip
        # Split on spaces to get a list of number strings
        .split(' ')
        # Convert to integers
        .map(&.to_i)
    end

    {cols, instructions}
  end

  def self.part_one(input : String)
    cols, instructions = parse_input(input)

    # Now to apply the instructions
    instructions.each do |ins|
      count, from, to = ins
      from -= 1
      to -= 1
      items = cols[from].shift(count)
      items.each { |i| cols[to].unshift(i) }
    end

    # Get the top item from each column or "stack"
    cols.map { |col| col.first }.join
  end

  def self.part_two(input : String)
    cols, instructions = parse_input(input)

    # Now to apply the instructions
    instructions.each do |ins|
      count, from, to = ins
      from -= 1
      to -= 1
      items = cols[from].shift(count).reverse
      items.each { |i| cols[to].unshift(i) }
    end

    # Get the top item from each column or "stack"
    cols.map { |col| col.first }.join
  end
end
