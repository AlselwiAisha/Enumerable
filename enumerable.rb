module MyEnumerable
  def all?
    return false unless block_given?

    each { |i| return false unless yield(i) }
    true
  end

  def any?
    return false unless block_given?

    each { |i| return true if yield(i) }
    false
  end

  def filter?
    array = []
    each { |i| array.push(i) if yield i }
    array
  end
end
