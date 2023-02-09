# my_list.rb
class MyList
  include MyEnumerable

  attr_reader :list

  def initialize(*list)
    @list = list
  end

  def each
    list.each {|element| yield element}
  end
  
end