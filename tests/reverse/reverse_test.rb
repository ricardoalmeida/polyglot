# frozen_string_literal: true

require 'test_helper'
require 'reverse/reverse'

describe Reverse do
  def setup
    @tests = [
      { word: 'cat', want: 'tac' },
      { word: 'alphabet', want: 'tebahpla' },
      { word: '日本語', want: '語本日' }
    ]
  end

  describe '.iterate' do
    it 'reverses a word' do
      @tests.each do |tc|
        _(Reverse.iterate(tc[:word])).must_equal(tc[:want])
      end
    end
  end

  describe '.recursive' do
    it 'reverses a word' do
      @tests.each do |tc|
        _(Reverse.recursive(tc[:word])).must_equal(tc[:want])
      end
    end
  end

  describe '.std' do
    it 'reverses a word' do
      @tests.each do |tc|
        _(Reverse.std(tc[:word])).must_equal(tc[:want])
      end
    end
  end
end
