# frozen_string_literal: true

# BaseToBase :
class BaseToBase
  def self.base_to_base(value, base, new_base)
    DecToBase.iterate(BaseToDec.iterate(value, base), new_base)
  end
end
