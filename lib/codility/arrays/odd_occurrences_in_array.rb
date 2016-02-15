# https://codility.com/programmers/task/odd_occurrences_in_array/
module Codility
  module Arrays
    module OddOccurrencesInArray
      # O(n)
      def solution(a)
        once = {}

        a.each do |i|
          if once.key?(i)
            once.delete(i)
          else
            once[i] = true
          end
        end

        once.keys.first
      end
    end
  end
end