module Codility
  module MaxSlice
    module MaxSliceSum
      def solution(a)
        max_sum = 0
        max_sum_in_position = 0

        has_positive = false
        max_element = a[0]

        a.each do |element|
          max_sum_in_position = [0, max_sum_in_position + element].max
          max_sum = [max_sum, max_sum_in_position].max
          max_element = [max_element, element].max
          has_positive = has_positive || (element > 0)
        end

        if has_positive
          max_sum
        else
          max_element
        end
      end
    end
  end
end