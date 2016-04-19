module SquareRoot
  # Calculate square root by using binary search.
  class BinarySearchSquareRootComputer
    EPS = 0.001

    # TODO: flexible presicion
    # TODO: handle negatives
    # TODO: handle 0 < x < 1
    def get_root(x)
      left = 0
      right = x.to_f
      prev = right + 1000
      loop do
        middle = (left + right) / 2
        return middle if (prev - middle).abs < EPS
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
