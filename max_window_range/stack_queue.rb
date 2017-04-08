require_relative 'my_stack'

class StackQueue
  def initialize
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def enqueue(el)
    @in_stack.push(el)
  end

  def dequeue
    if @out_stack.empty?
      @out_stack.push(@in_stack.pop) until @in_stack.empty?
    end
    @out_stack.pop
  end

  def size
    @in_stack.size + @out_stack.size
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end
end
