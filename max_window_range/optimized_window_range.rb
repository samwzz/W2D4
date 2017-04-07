require_relative 'min_max_stack_queue'

def optimized_window_range(array, window_size)
  stack = MinMaxStackQueue.new
  max = MinMaxStackQueue.new
  min = MinMaxStackQueue.new
  current_max_range = nil
  array.each do |el|
    if stack.size < window_size
      stack.enqueue(el)
    else
      stack.enqueue(el)
      stack.dequeue
    end
    current_max_range = stack.max - stack.min
  end
end
