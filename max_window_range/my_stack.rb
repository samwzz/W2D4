class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push
    @store.push
  end

  def peek
    @store[-1]
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

  def max
    max = @store.pop
    until @store.empty?
      current = @store.pop
      max = current if current > max
    end
    max
  end

  def min
    min = @store.pop
    until @store.empty?
      current = @store.pop
      min = current if current < min
    end
    min
  end
end
