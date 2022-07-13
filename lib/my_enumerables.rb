module Enumerable
  # use each?
  def my_each_with_index
    for i in 0..length - 1
      yield [self[i], i]
    end
    self
  end

  def my_select
    filtered_array = []
    my_each { |element| filtered_array.push(element) if yield(element) }
    filtered_array
  end

  def my_all?
    my_each { |element| return false unless yield(element) }
    true
  end

  def my_any?
    my_each { |element| return true if yield(element) }
    false
  end

  def my_none?
    my_each { |element| return false if yield(element) }
    true
  end

  def my_count
    if block_given?
      count = 0
      my_each do |element|
        count += 1 if yield(element)
      end
      return count
    end

    length
  end

  def my_map
    result_array = []
    my_each { |element| result_array.push(yield(element)) }
    result_array
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
