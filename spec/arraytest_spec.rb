require 'simplecov'
SimpleCov.start

require 'C:/Users/Jacek/RubymineProjects/untitled/projekt tar/tar'

RSpec.describe 'tar.rb' do
  describe 'Array' do
    describe 'quicksort' do
      it 'should be initialized' do
        expect { [].quicksort }.not_to raise_error
      end

      it 'should return array' do
        expect([].quicksort).to be_a_kind_of Array
      end

      it 'should sort objects ascending' do
        original = [6, 8, 1, 5, 7, 11]
        sorted = original.quicksort
        expect(sorted[1] <= sorted[2])
            .to be true
      end

      it 'shouldn\'t sort objects descending' do
        original = [6, 8, 1, 5, 7, 11]
        sorted = original.quicksort
        expect(sorted[1] >= sorted[2])
            .to be false
      end

      it 'shouldn\'t change class of String in array' do
        string_array = %w(a f c)
        string_array_sorted = string_array.quicksort
        expect(string_array_sorted[1]).to be_a_kind_of String
      end

      it 'shouldn\'t change class of Integer in array' do
        integer_array = [3, 7, 4]
        integer_array_sorted = integer_array.quicksort
        expect(integer_array_sorted[1]).to be_a_kind_of Integer
      end

      it 'shouldn\'t change class of Float in array' do
        float_array = [3.14, 7.5, 4.99]
        float_array_sorted = float_array.quicksort
        expect(float_array_sorted[1]).to be_a_kind_of Float
      end

      it 'should match sorted array' do
        original = [7, 3, 5, 1]
        sorted = original.quicksort
        expect(sorted).to match_array([1, 3, 5, 7])
      end

      it 'should sort despite numerical type differences' do
        original = [3, 5.34]
        sorted = original.quicksort
        expect(sorted).to match_array([3, 5.34])
      end

      it 'should sort full words' do
        original = %w(aaa abc aba)
        sorted = original.quicksort
        expect(sorted).to match_array(%w(aaa aba abc))
      end

      it 'shouldn\'t eliminate array objects' do
        original = [3, 5, 4, 1, 8]
        sorted = original.quicksort
        expect(original.size).to eq(sorted.size)
      end

      it 'should sort 1 element arrays' do
        original = [7]
        sorted = original.quicksort
        expect(sorted).to match_array([7])
      end

      it 'should return [] for empty arrays' do
        original = []
        original.quicksort
        expect(original).to be_empty
      end

      it 'should not change original array' do
        original=[4,1,8,12,0]
        copy=original
        original.quicksort
        expect(original).to match_array(copy)
      end

      it 'should work with array originally sorted ascending' do
        original=[1,2,3,4,5]
        sorted=original.quicksort
        expect(sorted).to match_array(original)
      end

      it 'shouldn\t work with array originally sorted descending' do
        original=[5,4,3,2,1]
        sorted=original.quicksort
        expect(sorted).to match_array(original)
      end

    end
  end
end
