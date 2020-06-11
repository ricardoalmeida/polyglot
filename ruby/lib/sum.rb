# frozen_string_literal: true

# https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#06---sum-all-the-numbers-in-a-list-code

# Sum :
class Sum
  def self.iterate(list)
    sum = 0
    list.each { |n| sum += n }
    sum
  end

  def self.recursive(list)
    return 0 if list.empty?

    list.first + recursive(list[1..])
  end

  def self.std(list)
    list.sum
  end
end
