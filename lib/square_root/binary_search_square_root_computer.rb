module SquareRoot
  # Calculate square root by using binary search.
  class BinarySearchSquareRootComputer
    # TODO: handle negatives
    def get_root(x, precision)
      if x >= 1
       left, right = 0, x.to_f
      else
        left, right = x.to_f, 1
      end
      prev = right + 1000
      loop do
        middle = (left + right) / 2
        return middle if (prev - middle).abs < precision / 2
        prev = middle
        if middle**2 > x
          right = middle
        else
          left = middle
        end
      end
    end
  end
end
