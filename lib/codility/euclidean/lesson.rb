module Codility
  module Euclidean
    module Lesson
      def gcd(a, b)
        if a % b == 0
          b
        else
          gcd(b, a % b)
        end
      end

      def binary_gcd(a, b, res = 1)
        if a == b
          a * res
        elsif a % 2 == 0 && b % 2 == 0
          binary_gcd(a / 2, b / 2, 2 * res)
        elsif a % 2 == 0
          binary_gcd(a / 2, b, res)
        elsif b % 2 == 0
          binary_gcd(a, b / 2, res)
        elsif a > b
          binary_gcd(a - b, b, res)
        else
          binary_gcd(b, b - a, res)
        end
      end

      def lcm(a, b)
        (a * b) / binary_gcd(a,b)
      end
    end
  end
end