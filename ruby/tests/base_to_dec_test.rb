# frozen_string_literal: true

require 'test_helper'
require 'base_to_dec'

describe BaseToDec do
  def setup
    @tests = [
      { want: 1, base: 2, have: '1' },
      { want: 2, base: 2, have: '10' },
      { want: 7, base: 3, have: '21' },
      { want: 14, base: 2, have: '1110' },
      { want: 14, base: 16, have: 'E' },
      { want: 17, base: 16, have: '11' },
      { want: 3_735_928_559, base: 2, have: '11011110101011011011111011101111' },
      { want: 3_735_928_559, base: 3, have: '100122100210211112102' },
      { want: 3_735_928_559, base: 4, have: '3132223123323233' },
      { want: 3_735_928_559, base: 5, have: '30122344203214' },
      { want: 3_735_928_559, base: 6, have: '1414413525315' },
      { want: 3_735_928_559, base: 7, have: '161402603666' },
      { want: 3_735_928_559, base: 8, have: '33653337357' },
      { want: 3_735_928_559, base: 9, have: '10570724472' },
      { want: 3_735_928_559, base: 10, have: '3735928559' },
      { want: 3_735_928_559, base: 11, have: '164791A470' },
      { want: 3_735_928_559, base: 12, have: '8831A383B' },
      { want: 3_735_928_559, base: 13, have: '476CC321C' },
      { want: 3_735_928_559, base: 14, have: '276253DDD' },
      { want: 3_735_928_559, base: 15, have: '16CEB1BDE' },
      { want: 3_735_928_559, base: 16, have: 'DEADBEEF' }
    ]
  end

  describe '.iterate' do
    it 'converts value to decimal' do
      @tests.each do |tc|
        _(BaseToDec.iterate(tc[:have], tc[:base])).must_equal(tc[:want])
      end
    end
  end

  describe '.std' do
    it 'converts value to decimal' do
      @tests.each do |tc|
        _(BaseToDec.std(tc[:have], tc[:base])).must_equal(tc[:want])
      end
    end
  end
end
