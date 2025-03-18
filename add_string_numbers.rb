def add_number(string)
    return 0 if string.empty?
    check_delimiter = string.include?("\n")
    if check_delimiter
        string = string.gsub("\n", ',')
    end
    numbers = string.split(',').map(&:to_i)
    numbers.reduce(:+)
end
