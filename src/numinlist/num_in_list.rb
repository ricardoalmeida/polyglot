# frozen_string_literal: true

# NumInList
class NumInList
  def self.iterate(list, num)
    list.each do |n|
      return true if n == num
    end
    false
  end

  def self.recursive(list, num)
    return false if list.empty?
    return true if list.first == num

    recursive(list[1..-1], num)
  end

  def self.std(list, num)
    list.include? num
  end
end
