# frozen_string_literal: true

# BaseToDec :
class BaseToDec
  CHARSET = '0123456789ABCDEF'
  def self.iterate(value, base)
    res = 0
    multiplier = 1
    (value.length - 1).downto(0).each do |n|
      index = CHARSET.index(value[n])
      raise 'something went wrong.' if index.nil?

      res += index * multiplier
      multiplier *= base
    end
    res
  end

  def self.std(value, base)
    value.to_i(base)
  end
end
