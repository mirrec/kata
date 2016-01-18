module Codility
  module Sums
    module CountDiv
      def correct_solution(a, b, k)
        (a..b).select { |element| element % k == 0 }.count
      end

      def solution(a, b, k)
        diff_a = a % k
        diff_b = b % k

        if diff_a > 0
          diff_a = k - diff_a
        end

        if ((b - diff_b) - (a + diff_a)) == 0
          ((b - diff_b) % k == 0) ? 1 : 0
        else
          res = ((b - diff_b) - (a + diff_a)) / k

          if res > 0
            res + 1
          else
            0
          end
        end
      end
    end
  end
end
