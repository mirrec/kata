# https://codility.com/programmers/task/common_prime_divisors/
# solution: http://www.martinkysel.com/codility-commonprimedivisors-solution/
module Codility
  module Euclidean
    module CommonPrimeDivisors
      def gcd(a, b)
        if a % b == 0
          b
        else
          gcd(b, a % b)
        end
      end

      def all_primes?(number, gcd_value, current_value)
        while number != 1 && current_value != 1
          while number % current_value == 0 && number != 1
            number = number / current_value
          end

          if number > 1
            current_value = gcd(number, gcd_value)
          end
        end

        number == 1
      end

      # O(Z*log(max(a) + max(b))^2)
      def solution(a, b)
        same_primes = 0

        a.each_with_index do |n, index|
          m = b[index]

          gcd = gcd(n, m)

          if all_primes?(n, gcd, gcd) && all_primes?(m, gcd, gcd)
            same_primes += 1
          end
        end

        same_primes
      end
    end
  end
end