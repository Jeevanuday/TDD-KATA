def add_number(string)
    return 0 if string.empty?
    delimiter = ','
    if string[0, 2] == "//"
        delimiter = string[2]
        string = string[4..-1]
    end
    new_line_check = string.include?("\n")
    return 'Invalid input' if string.include?("#{delimiter}\n") || string.include?("\n#{delimiter}")
    string = string.gsub("\n", delimiter) if new_line_check
    numbers = string.split(delimiter).map(&:to_i)
    negative_numbers = numbers.select { |num| num < 0 }
    return "Negatives not allowed: #{negative_numbers.join(', ')}" if negative_numbers.any?
    numbers.reduce(:+)
end
