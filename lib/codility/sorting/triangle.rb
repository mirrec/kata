# https://codility.com/programmers/task/triangle/
module Codility
  module Sorting
    module Triangle
      # O(n * log(n))
      def solution(a)
        sorted = a.select{ |element| element > 0 }.sort

        0.upto(sorted.length - 3) do |index|
          if (sorted[index] + sorted[index + 1] > sorted[index + 2]) &&
              (sorted[index + 1] + sorted[index + 2] > sorted[index]) &&
              (sorted[index] + sorted[index + 2] > sorted[index + 1])
            return 1
          end
        end

        0
      end
    end
  end
end