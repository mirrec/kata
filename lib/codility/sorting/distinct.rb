# https://codility.com/programmers/task/distinct/
module Codility
  module Sorting
    module Distinct
      # O(n*log(n))
      def solution(a)
        sorted = a.sort

        distinct = 0
        last_element = nil
        sorted.each do |element|
          if element != last_element
            last_element = element
            distinct += 1
          end
        end

        distinct
      end

      # O(n)
      require 'set'
      def smart_solution(a)
        Set.new(a).count
      end
    end
  end
end