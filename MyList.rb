class MyList
    @list 

  def initialize(*lis)
    @list = lis
  end

  def each
    @list.each do |item|
        yield(item)
    end
  end
end

