module Codility
  module Caterpillar
    module MinAbsSumOfTwo
      def solution(a)
        sorted = a.sort
        # all numbers are positive
        if sorted[0] >= 0
          sorted[0] * 2
        end

        # all numbers are not positive
        if sorted[-1] <= 0
          sorted[-1] * -2
        end

        # all type of numbers
        min_abs_element = 1 / 0.0
        changing_index = 0

        last_element = sorted[0].abs
        sorted.each_with_index do |element, index|
          if element.abs < min_abs_element
            min_abs_element = element.abs
          end

          if element >= 0 && last_element < 0
            changing_index = index
          end

          last_element = element
        end

        min_abs_sum_two = min_abs_element * 2

        left = right = changing_index

        # go from middle of array to sides and find minimal two abs sum
        while left > 0 || right < a.length
          sum_two = (sorted[left] + sorted[right]).abs
          if sum_two < min_abs_sum_two
            min_abs_sum_two = sum_two
          end
          if min_abs_sum_two == 0
            return 0
          end

          if left > 0 && right < a.length - 1
            if (sorted[left - 1] + sorted[right]).abs < (sorted[left] + sorted[right + 1]).abs
              left -= 1
            else
              right += 1
            end
          elsif left > 0
            left -= 1
          else
            right += 1
          end
        end

        min_abs_sum_two
      end
    end
  end
end