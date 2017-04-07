def bad_two_sum?(arr, target)
  (0..arr.length - 2).each do |i|
    (i + 1..arr.length - 1).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end
  false
end

def okay_two_sum?(arr, target)
  sorted = arr.sort
  l = 0
  r = arr.length - 1
  while l < r
    if arr[l] + arr[r] == target
      return true
    elsif arr[l] + arr[r] > target
      r -= 1
    else
      l += 1
    end
  end
  false
end


def great_two_sum?(arr, target)
  hash = Hash.new(0)
  arr.each do |el|
    hash[el] += 1
  end
  arr.each do |el|
    hash[el] -= 1
    remainder = target - el
    return true if hash[remainder] == 1
  end
  false
end

def four_sum?(arr, target)
  # REALLY HARD!!
end
