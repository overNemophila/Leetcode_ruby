class MyCircularQueue

=begin
    :type k: Integer
=end
  attr_accessor :head, :tail, :last , :queue, :size
  def initialize(k)
    @queue = Array.new(k)
    @head, @tail = -1,-1
    @size, @last = k,k
  end

=begin
    :type value: Integer
    :rtype: Boolean
=end
  def en_queue(value)
    if @last!=0
      @tail = (@tail +1 )%@size
      if @last == @size
        @head = @head +1
      end
      @queue[@tail] = value
      @last = @last - 1
      return true
    else
      return false
    end
  end


=begin
    :rtype: Boolean
=end
  def de_queue()
    if @last!= @size
      if @head == @tail
        @head,@tail = -1,-1
      else
        @head = (@head + 1)%@size
      end
      @last = @last + 1
      return true
    else
      return false
    end
  end


=begin
    :rtype: Integer
=end
  def front()
    if !is_empty()
      return @queue[@head]

    else
      return -1
    end

  end


=begin
    :rtype: Integer
=end
  def rear()
    if !is_empty()
      return @queue[@tail]
    else
      return -1
    end
  end


=begin
    :rtype: Boolean
=end
  def is_empty()
    @head==-1&&@tail==-1?true : false
  end


=begin
    :rtype: Boolean
=end
  def is_full()
    (@last==0)? true : false
  end


end






