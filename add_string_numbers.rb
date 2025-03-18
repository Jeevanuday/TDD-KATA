def add_number(string)
    return 0 if string.empty?
    unless string.include?(',')
        return string.to_i
    end
    numbers = string.split(',').map(&:to_i)
    numbers.reduce(:+)
end
