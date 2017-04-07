class MinMaxStack
  def initialize
    @max = MyStack.new
    @min = MyStack.new
    @stack = MyStack.new
  end

  def push(el)
    @stack.push(el)
    @max.push(el) if @max.peek.nil || el >= @max.peek
    @min.push(el) if @min.peek.nil || el <= @min.peek
  end

  def pop
    removed_el = @stack.pop
    @max.pop if removed_el == @max.peek
    @min.pop if removed_el == @min.peek
  end

  def max
    @max.peek
  end

  def min
    @min.peek
  end

  def size
    @stack.size
  end

  def empty?
    @stack.empty?
  end
end
