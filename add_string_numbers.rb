def add_string_number(input_string)
    return 0 if input_string.empty?

    delimiter, input_string = fetch_delimeter(input_string)
    return 'Invalid input' if input_string.include?("#{delimiter}\n") || input_string.include?("\n#{delimiter}")
    
    input_string.gsub!("\n", delimiter)
    numbers_list = input_string.split(delimiter).map(&:to_i)

    negative_numbers = numbers_list.select { |num| num < 0 }
    return "Negatives not allowed: #{negative_numbers.join(', ')}" if negative_numbers.any?

    numbers_list.reject! { |num| num > 1000 }
    numbers_list.reduce(:+)
end

def fetch_delimeter(input_string)
    return [input_string[2], input_string[4..-1]] if input_string[0, 2] == "//"
    [',', input_string]
end
