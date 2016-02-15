# https://codility.com/programmers/task/perm_missing_elem/
module Codility
  module TimeComplexity
    module PermMissingElem
      def sum_from_range(a, b)
        (a + b) * (b - a + 1) / 2
      end

      def solution(a)
        sum = 0
        length = 0

        a.each do |number|
          sum += number
          length += 1
        end

        sum_from_range(1, length + 1) - sum
      end
    end
  end
end
