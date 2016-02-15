# https://codility.com/programmers/task/tape_equilibrium/
module Codility
  module TimeComplexity
    module TapeEquilibrium
      # O(n)
      def solution(a)
        x = 0
        sums_left = []
        sum_left = 0
        sums_right = []
        sum_right = 0

        while x < a.length - 1
          sum_left += a[x]
          sums_left << sum_left

          sum_right += a[a.length - 1 - x]
          sums_right << sum_right

          x+=1
        end

        min = nil
        sums_left.each_with_index do |value, i|
          res = (value - sums_right[sums_right.length - i - 1]).abs
          if min == nil || min > res
            min = res
          end
        end

        min
      end

      def correct_but_slow_solution(a)
        x = 0
        differences = []
        while x < a.length - 1

          puts "#{a[0..x].inspect} vs #{a[(x+1)..-1]}"

          sum_left = a[0..x].inject(0) { |sum, i| sum + i }
          sum_right = a[(x+1)..-1].inject(0) { |sum, i| sum + i }

          differences << (sum_left - sum_right).abs
          x+=1
        end

        puts differences.inspect
        differences.min
      end

      def bad_solution(a)
        left_side_sum = a[0]
        left_position = 0
        right_side_sum = a[-1]
        right_position = a.length - 1

        while right_position - left_position != 1

          new_left_side_sum = left_side_sum + a[left_position + 1]
          new_right_side_sum = right_side_sum + a[right_position - 1]

          # binding.pry
          if (new_left_side_sum - right_side_sum).abs < (left_side_sum - new_right_side_sum).abs
            left_position += 1
            left_side_sum = new_left_side_sum
          else
            right_position -= 1
            right_side_sum = new_right_side_sum
          end

          puts "#{a[0..left_position].inspect} vs #{a[right_position..-1]}"

        end

        (left_side_sum - right_side_sum).abs
      end

    end
  end
end