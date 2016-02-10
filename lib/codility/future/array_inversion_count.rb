# Idea behind this solution is:
# When are going through the array in reverse order, all we have to know for given element is how many less elements
# in the array we have iterated over so far. It is quite easy to answer this question when we have sorted array.
# So as we iterate over element, we are creating sorted array. And always ask about position for the new element.
# This position is number of smaller elements we have iterated over.
module Codility
  module Future
    module ArrayInversionCount

      # O(log n)
      def find_new_index(number, sorted_array)
        left = 0
        right = sorted_array.length - 1

        position = 0
        while left <= right
          middle = (left + right) / 2
          if number <= sorted_array[middle]
            right = middle - 1

            position = middle
          else
            left = middle + 1

            position = left
          end
        end

        position
      end

      # O(n * log n)
      def solution(a)
        sorted_passed = []

        count = 0
        a.reverse.each do |element|
          to_position = find_new_index(element, sorted_passed)

          count += to_position
          if count > 1_000_000_000
            return -1
          end

          sorted_passed.insert(to_position, element)
        end

        count
      end

      # O(n^2)
      def correct_solution(a)
        count = 0

        a.each_with_index do |element, index|
          index.upto(a.length - 1) do |i|
            if element > a[i]
              count += 1
              if count > 1_000_000_000
                return -1
              end
            end
          end
        end

        count
      end
    end
  end
end