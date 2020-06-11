# frozen_string_literal: true

# https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#09---decimal-to-another-base-code

# DecToBase :
class DecToBase
  CHARSET = '0123456789ABCDEF'

  def self.iterate(dec, base)
    res = ''
    loop do
      div = dec / base
      break if dec.zero?

      res = CHARSET[dec % base] + res
      dec = div
    end
    res
  end

  def self.recursive(dec, base)
    div = dec / base
    res = recursive(div, base) if div != 0
    res.to_s + CHARSET[dec % base]
  end

  def self.std(dec, base)
    dec.to_s(base).upcase
  end
end
