module Codility
  module MaxSlice
    module MaxDoubleSliceSum
      def solution(a)
        return 0 if a.length <= 3

        # we can skip first and last element
        a = a[1..-2]

        best_sums_at_from_start = [[a[0], 0].max]
        best_sums_at_from_end = [[a[-1], 0].max]

        a.each_with_index do |element, index|
          next if index < 1

          best_sums_at_from_start[index] = [0, element + best_sums_at_from_start[index-1]].max
        end

        a.reverse.each_with_index do |element, index|
          next if index < 1

          best_sums_at_from_end[index] = [0, element + best_sums_at_from_end[index-1]].max
        end

        # shift array for better display purpose, not really needed for algorithm
        best_sums_at_from_start.unshift(0)
        best_sums_at_from_start.unshift(0)
        best_sums_at_from_end = best_sums_at_from_end.reverse
        best_sums_at_from_end << 0
        best_sums_at_from_end << 0

        1.upto(a.length).to_a.map do |i|
          best_sums_at_from_start[i] + best_sums_at_from_end[i]
        end.max
      end
    end
  end
end