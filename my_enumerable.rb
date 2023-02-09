# The MyEnumerable module provides methods for working with enumerable objects.
# It implements the same functionality as the methods in the Enumerable module.
module MyEnumerable
  def all?
    each do |element|
      return false unless yield(element)
    end
    true
  end

  def any?
    each do |element|
      return true if yield(element)
    end
    false
  end

  def filter?
    filtered_list = []
    each do |element|
      filtered_list << element if yield(element)
    end
    filtered_list
  end
end
