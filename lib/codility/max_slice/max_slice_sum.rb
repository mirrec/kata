# https://codility.com/programmers/task/max_slice_sum/
module Codility
  module MaxSlice
    module MaxSliceSum
      # O(n)
      def solution(a)
        max_sum_in_position = [a[0]]

        a.each_with_index do |element, index|
          next if index == 0

          max_sum_in_position[index] = [element, element + max_sum_in_position[index - 1]].max
        end

        max_sum_in_position.max
      end
    end
  end
end