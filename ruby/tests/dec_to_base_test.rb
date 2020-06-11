# frozen_string_literal: true

require 'test_helper'
require 'dec_to_base'

describe DecToBase do
  def setup
    @tests = [
      { dec: 1, base: 2, want: '1' },
      { dec: 2, base: 2, want: '10' },
      { dec: 7, base: 3, want: '21' },
      { dec: 14, base: 2, want: '1110' },
      { dec: 14, base: 16, want: 'E' },
      { dec: 17, base: 16, want: '11' },
      { dec: 3_735_928_559, base: 2, want: '11011110101011011011111011101111' },
      { dec: 3_735_928_559, base: 3, want: '100122100210211112102' },
      { dec: 3_735_928_559, base: 4, want: '3132223123323233' },
      { dec: 3_735_928_559, base: 5, want: '30122344203214' },
      { dec: 3_735_928_559, base: 6, want: '1414413525315' },
      { dec: 3_735_928_559, base: 7, want: '161402603666' },
      { dec: 3_735_928_559, base: 8, want: '33653337357' },
      { dec: 3_735_928_559, base: 9, want: '10570724472' },
      { dec: 3_735_928_559, base: 10, want: '3735928559' },
      { dec: 3_735_928_559, base: 11, want: '164791A470' },
      { dec: 3_735_928_559, base: 12, want: '8831A383B' },
      { dec: 3_735_928_559, base: 13, want: '476CC321C' },
      { dec: 3_735_928_559, base: 14, want: '276253DDD' },
      { dec: 3_735_928_559, base: 15, want: '16CEB1BDE' },
      { dec: 3_735_928_559, base: 16, want: 'DEADBEEF' }
    ]
  end

  describe '.iterate' do
    it 'converts dec to base' do
      @tests.each do |tc|
        _(DecToBase.iterate(tc[:dec], tc[:base])).must_equal(tc[:want])
      end
    end
  end

  describe '.recursive' do
    it 'converts dec to base' do
      @tests.each do |tc|
        _(DecToBase.recursive(tc[:dec], tc[:base])).must_equal(tc[:want])
      end
    end
  end

  describe '.std' do
    it 'converts dec to base' do
      @tests.each do |tc|
        _(DecToBase.std(tc[:dec], tc[:base])).must_equal(tc[:want])
      end
    end
  end
end
