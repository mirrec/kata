# https://codility.com/programmers/task/max_nonoverlapping_segments/
module Codility
  module Greedy
    module MaxNonOverlappingSegments
      # O(n)
      def solution(a, b)
        return 0 if a.length == 0

        current_starting_position = a[-1]

        segments = 1

        (a.length - 1).downto(0).each do |i|
          starting = a[i]
          ending = b[i]

          if starting > current_starting_position
            # changing to better segment
            current_starting_position = starting
          elsif ending < current_starting_position
            # doing jump - non overlap

            segments += 1

            current_starting_position = starting
          end
        end

        segments
      end
    end
  end
end