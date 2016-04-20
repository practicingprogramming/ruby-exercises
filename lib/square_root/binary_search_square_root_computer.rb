module SquareRoot
  # Calculate square root by using binary search.
  class BinarySearchSquareRootComputer
    def get_root(x, precision)
      validate_input(x, precision)
      if x >= 1
       left, right = 0, x.to_f
      else
        left, right = x.to_f, 1
      end
      prev = nil
      loop do
        middle = (left + right) / 2
        return middle if finished?(middle, prev, precision)
        prev = middle
        if middle**2 > x
          right = middle
        else
          left = middle
        end
      end
    end

    private

    def validate_input(x, precision)
      fail ArgumentError.new("Invalid precision: #{precision}, must be positive") unless precision > 0
      fail ArgumentError.new("Invalid input: #{x}, must be non-negative") unless x >= 0
    end

    def finished?(current, previous, precision)
      !previous.nil? && (current - previous).abs < precision.to_f / 2
    end
  end
end
