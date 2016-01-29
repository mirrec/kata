module Codility
  module Euclidean
    module ChocolatesByNumbers

      def gcd(a, b)
        if a % b == 0
          b
        else
          gcd(b, a % b)
        end
      end

      def solution(n, m)
        result = gcd(n, m)
        if result == n || result == m
          if n > m
            n / m
          else
            1
          end
        else
          n / result
        end
      end
    end
  end
end