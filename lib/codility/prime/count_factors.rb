# https://codility.com/programmers/task/count_factors/
module Codility
  module Prime
    module CountFactors

      # O(sqrt(n))
      def solution(n)
        i = 1

        counts = 0

        while (i * i) <= n
          if n % i == 0
            counts += 1

            if n / i != i
              counts += 1
            end
          end
          i +=1
        end

        counts
      end
    end
  end
end