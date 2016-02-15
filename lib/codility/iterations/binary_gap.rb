# https://codility.com/programmers/task/binary_gap/
module Codility
  module Iterations
    module BinaryGap

      # O(log n)
      def solution(n)
        max = 0
        current_max = 0
        n.to_s(2).each_char do |n|
          if n == '1'
            if max < current_max
              max = current_max
            end
            current_max = 0
          else
            current_max += 1
          end
        end

        max
      end
    end
  end
end