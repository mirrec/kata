module Codility
  module Prime
    module MinPerimeterRectangle
      def solution(n)
        i = 1

        min_perimeter = 1 / 0.0

        while (i * i) <= n
          if n % i == 0
            a = i
            b = n / i

            min_perimeter = [min_perimeter, 2 * (a + b)].min
          end
          i +=1
        end

        min_perimeter
      end
    end
  end
end