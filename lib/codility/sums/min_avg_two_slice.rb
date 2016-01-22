module Codility
  module Sums
    module MinAvgTwoSlice
      def solution(a)
        prefix_sum = [0] * (a.length + 1)

        a.each_with_index do |element, index|
          prefix_sum[index + 1] = prefix_sum[index] + element
        end

        array_sizes = [2, 3]

        minimal_avg = (prefix_sum[2] - prefix_sum[0]) / 2.to_f
        starting_position = 0

        array_sizes.each do |size|
          (0 + size - 1).upto(a.length - 1) do |ending|
            result = (prefix_sum[ending + 1] - prefix_sum[ending - size + 1]) / size.to_f

            if result < minimal_avg
              minimal_avg = result
              starting_position = ending - size + 1
            end
          end
        end

        starting_position
      end
    end
  end
end