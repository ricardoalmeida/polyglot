# frozen_string_literal: true

require 'test_helper'
require 'sum/sum'

describe Sum do
  before do
    @tests = [
      { list: [1], want: 1 },
      { list: [1, 2], want: 3 },
      { list: [1, 2, 3, 4, 5], want: 15 },
      { list: [], want: 0 },
      { list: [-1, -1], want: -2 },
      { list: [-1, -1, 0, 0, 0], want: -2 },
      { list: [0, 0, 0], want: 0 },
      { list: [-1, 0, 1], want: 0 },
      { list: [1, 0, -1], want: 0 },
      { list: [43, 67, 65, 42, 74, 95, 100, 21], want: 507 },
      { list: [26, 26, 94, 55, 71, 57, 7, 72], want: 408 },
      { list: [78, 11, 48, 91, 13, 26, 74, 99], want: 440 },
      { list: [31, 96, 10, 55, 41, 13, 92, 5], want: 343 },
      { list: [14, 39, 18, 39, 3, 29, 8, 29], want: 179 },
      { list: [-95, -46, -65, -63, 10], want: -259 }
    ]
  end

  describe '.iterate' do
    it 'sum item from a list' do
      @tests.each do |tc|
        _(Sum.iterate(tc[:list])).must_equal(tc[:want])
      end
    end
  end

  describe '.recursove' do
    it 'sum item from a list' do
      @tests.each do |tc|
        _(Sum.recursive(tc[:list])).must_equal(tc[:want])
      end
    end
  end

  describe '.std' do
    it 'sum item from a list' do
      @tests.each do |tc|
        _(Sum.std(tc[:list])).must_equal(tc[:want])
      end
    end
  end
end
