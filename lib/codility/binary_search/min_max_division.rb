# solution from https://github.com/mrhead/codility/blob/master/min_max_division.rb
module Codility
  module BinarySearch
    module MinMaxDivision
      def solution(k, m, a)
        array_sum = 0
        maximum_element = -1

        a.each do |number|
          array_sum += number
          maximum_element = number if number > maximum_element
        end

        starting = maximum_element
        ending = array_sum

        minimal_block_sum = array_sum
        while starting <= ending
          middle = (starting + ending) / 2

          if count_number_of_blocks(a, middle) <= k
            ending = middle - 1
            minimal_block_sum = middle
          else
            starting = middle + 1
          end
        end

        minimal_block_sum
      end

      def count_number_of_blocks(a, max_sum)
        blocks = 1
        current_sum = 0

        a.each do |number|
          if current_sum + number > max_sum
            blocks += 1
            current_sum = number
          else
            current_sum += number
          end
        end

        blocks
      end
    end
  end
end