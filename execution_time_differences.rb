def my_min1(arr)
  lowest = arr.first
  (0..arr.length - 1).each do |i|
    current_lowest = arr[i]
    (0..arr.length - 1).each do |j|
      if arr[j] < current_lowest
        current_lowest = arr[j]
      end
    end
    if current_lowest < lowest
      lowest = current_lowest
    end
  end
  lowest
end

def my_min2(arr)
  lowest = arr.first
  (1..arr.length - 1).each do |i|
    if arr[i] < lowest
      lowest = arr[i]
    end
  end

  lowest
end

def largest_contiguous_subsum1(list)
  subarrays = []
  (0..list.length - 1).each do |i|
    (i..list.length - 1).each do |j|
      subarrays << list[i..j]
    end
  end
  largest_sum = subarrays.first.inject(:+)
  subarrays.each do |subarray|
    current_sum = subarray.inject(:+)
    largest_sum = current_sum if current_sum > largest_sum
  end
  largest_sum
end


def largest_contiguous_subsum2(list)
  largest_sum = list.first
  last_index = 0
  temp_sum = 0
  list.each_with_index do |number, i|
    if number >= largest_sum && i != last_index + 1
      largest_sum = temp_sum + number if temp_sum + number > largest_sum
    elsif number >= 0
      last_index = i
      largest_sum += number
    elsif number < 0 && (number + largest_sum) >= 0
      temp_sum = largest_sum + number
    end
  end
  largest_sum
end
