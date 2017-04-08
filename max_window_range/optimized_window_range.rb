require_relative 'min_max_stack_queue'

def optimized_window_range(array, window_size)
  queue = MinMaxStackQueue.new
  max_range = nil
  array.each do |el|
    queue.enqueue(el)
    queue.dequeue if queue.size > window_size

    if queue.size == window_size
      current_range = queue.max - queue.min
      max_range = current_range if max_range.nil? || current_range > max_range
    end
  end

  max_range
end

if __FILE__ == $PROGRAM_NAME
  p optimized_window_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
  p optimized_window_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
  p optimized_window_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
  p optimized_window_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
end
