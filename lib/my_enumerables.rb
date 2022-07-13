module Enumerable
  # use each?
  def my_each_with_index
    for i in 0..length - 1
      yield [self[i], i]
    end
    self
  end
end

class Array
  def my_each
    for i in 0..length - 1
      yield self[i]
    end
    self
  end
end
