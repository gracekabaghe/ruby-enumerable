class MyList
  @list = []

  def initialize(*lis)
    @list = lis
  end

  def each(&block)
    @list.each(&block)
  end
end

