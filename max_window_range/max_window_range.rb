def windowed_max_range(arr, window_size)
  current_max_range = nil
  (0..arr.length - window_size).each do |i|
    current_window = arr[i, window_size]
    range = current_window.max - current_window.min
    if current_max_range.nil? || range > current_max_range
      current_max_range = range
    end
  end
  current_max_range
end
