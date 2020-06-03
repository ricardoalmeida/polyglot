# frozen_string_literal: true

require './test_helper.rb'
require './numinlist/num_in_list.rb'

describe NumInList do
  def setup
    @tests = [
      { list: [1, 2, 3, 4, 5], num: 1, want: true },
      { list: [1, 2, 3, 4, 5], num: 3, want: true },
      { list: [1, 2, 3, 4, 5], num: 5, want: true },
      { list: [1, 2, 3, 4, 5], num: 0, want: false },
      { list: [1, 2, 3, 4, -1], num: -1, want: true },
      { list: [-1, -1, -1, -1, -1, -1, -1, -1], num: -1, want: true },
      { list: [-1, -1, -1, -1, -1, -1, -1, -1], num: 1, want: false }
    ]
  end

  describe '#iterate' do
    it 'finds number in list' do
      @tests.each do |tc|
        _(NumInList.iterate(tc[:list], tc[:num])).must_equal tc[:want]
      end
    end
  end

  describe '#recursive' do
    it 'finds number in list' do
      @tests.each do |tc|
        _(NumInList.recursive(tc[:list], tc[:num])).must_equal tc[:want]
      end
    end
  end

  describe '#sdt' do
    it 'finds number in list' do
      @tests.each do |tc|
        _(NumInList.std(tc[:list], tc[:num])).must_equal tc[:want]
      end
    end
  end
end
