require_relative "min_max_stack"
require_relative "stack_queue"

class MinMaxStackQueue
  def initialize
    @stackqueue = StackQueue.new
    @max = StackQueue.new
    @min = StackQueue.new
  end

  def enqueue(el)
    @max = el if @max.nil? || el > @max
    @min = el if @min.nil? || el < @min
    @stackqueue.enqueue(el)
  end

  def dequeue
    @stackqueue.dequeue
  end

  def max
    @max
  end

  def min
    @min
  end

  def size
    @stackqueue.size
  end
end
