class Array
  def quicksort
    return self if length <= 1
    pivot = self[0]
    less, greatereq = self[1..-1].partition { |x| x < pivot }
    less.quicksort + [pivot] + greatereq.quicksort
  end
end
arr = [8, 2, 1, 5, 38]
p arr.quicksort