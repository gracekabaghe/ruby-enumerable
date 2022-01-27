require_relative 'my_enumerable'
class MyList
  include MyEnumerable
  @list = []

  def initialize(*lis)
    @list = lis
  end

  def each(&block)
    @list.each(&block)
  end
end

MyList.new(1, 2, 3, 4).all? { |item| item < 5 }
MyList.new(1, 2, 3, 4).all? { |item| item > 5 }
MyList.new(1, 2, 3, 4).any? { |item| item == 2 }
MyList.new(1, 2, 3, 4).any? { |item| item == 5 }
MyList.new(1, 2, 3, 4).filter?(&:even?)
