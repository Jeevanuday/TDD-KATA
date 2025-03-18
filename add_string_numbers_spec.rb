require './add_string_numbers'

describe 'add_string_numbers' do
    it 'return 0 when given an empty string' do
        expect(add_number('')).to eq(0)
    end

    context 'When single number is passed' do
        it 'return 1 when given "1"' do
            expect(add_number('1')).to eq(1)
        end
        it 'return 2 when given "2"' do 
            expect(add_number('2')).to eq(2)
        end
    end

    context 'when multiple numbers are passed' do
        it 'return 3 when given "1,2"' do
            expect(add_number('1,2')).to eq(3)
        end
        it 'return 6 when given "1,2,3"' do
            expect(add_number('1,2,3')).to eq(6)
        end
    end

    context 'when new line is passed' do
        it 'return 3 when given "1\n2"' do
            expect(add_number("1\n2")).to eq(3)
        end
        it 'return 6 when given "1\n2\n3"' do
            expect(add_number("1\n2\n3")).to eq(6)
        end
    end
end
