# frozen_string_literal: true

require 'test_helper'
require 'reverse/reverse'

describe Reverse do
  describe '.iterate' do
    it 'reverses a word' do
      _(Reverse.iterate('opa')).must_equal('apo')
    end
  end

  describe '.recursive' do
    it 'reverses a word' do
      _(Reverse.recursive('opa')).must_equal('apo')
    end
  end

  describe '.std' do
    it 'reverses a word' do
      _(Reverse.std('opa')).must_equal('apo')
    end
  end
end
