module Codility
  module CountingElements
    module FrogRiverOne
      def solution(x, a)
        steps = {}
        max = 0

        a.each_with_index do |element, time|
          if element > 0 && element <= x
            unless steps.key?(element)
              steps[element] = time

              max = time if max < time
            end
          end
        end

        if steps.count == x
          max
        else
          -1
        end
      end

      def correct_solution(x, a)
        steps = []

        1.upto(x) do |position|
          minimum_time = nil
          a.each_with_index do |element, time|
            if element == position
              minimum_time = time
              break
            end
          end

          if minimum_time.nil?
            return -1
          else
            steps << minimum_time
          end
        end

        puts steps.inspect
        steps.max
      end
    end
  end
end