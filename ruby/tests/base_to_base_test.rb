# frozen_string_literal: true

require 'test_helper'
require 'base_to_base'

describe BaseToBase do
  def setup
    @tests = [
      { value: 'E', base: 16, new_base: 2, want: '1110' },
      { value: '11011110101011011011111011101111', base: 2, new_base: 3, want: '100122100210211112102' },
      { value: '3735928559', base: 10, new_base: 4, want: '3132223123323233' },
      { value: '8831A383B', base: 12, new_base: 16, want: 'DEADBEEF' }
    ]
  end

  describe 'base_to_base' do
    it 'converts any base to other base' do
      @tests.each do |tc|
        _(BaseToBase.base_to_base(tc[:value], tc[:base], tc[:new_base])).must_equal(tc[:want])
      end
    end
  end
end
