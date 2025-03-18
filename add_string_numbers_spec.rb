require './add_string_numbers'

describe 'add_string_numbers' do
    it 'return 0 when given an empty string' do
        expect(add_number('')).to eq(0)
    end
    it 'return 1 when given "1"' do
        expect(add_number('1')).to eq(1)
    end
    it 'return 3 when given "1,2"' do
        expect(add_number('1,2')).to eq(3)
    end
    it 'return 6 when given "1,2,3"' do
        expect(add_number('1,2,3')).to eq(6)
    end
end
# The test is passing because the add_number method is being called from the add_string_numbers.rb file.
