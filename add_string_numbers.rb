def add_string_number(input_string)
    return 0 if input_string.empty?
    
    delimiter = ','
    if input_string[0, 2] == "//"
        delimiter = input_string[2]
        input_string = input_string[4..-1]
    end
    new_line_check = input_string.include?("\n")
    return 'Invalid input' if input_string.include?("#{delimiter}\n") || input_string.include?("\n#{delimiter}")
    
    input_string = input_string.gsub("\n", delimiter) if new_line_check
    numbers_list = input_string.split(delimiter).map(&:to_i)
    negative_numbers = numbers_list.select { |num| num < 0 }
    return "Negatives not allowed: #{negative_numbers.join(', ')}" if negative_numbers.any?

    remove_big_numbers = numbers_list.select { |num| num > 1000 }
    numbers_list = numbers_list - remove_big_numbers
    numbers_list.reduce(:+)
end
