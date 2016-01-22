module Codility
  module Sieve
    module Lesson
      def sieve_of_eratostenes(n)
        numbers = [true] * (n + 1)
        numbers[0] = numbers[1] = false

        i = 2
        while i * i <= n
          if numbers[i]
            k = i * i
            while k <= n
              numbers[k] = false
              k += i
            end
          end
          i += 1
        end

        numbers.each_with_index.select do |element, index|
          if element
            index
          end
        end.map(&:last)
      end

      def smallest_dividers(n)
        numbers = [0] * (n + 1)
        numbers[0] = numbers[1] = 0

        i = 2
        while i * i <= n
          if numbers[i] == 0
            k = i * i
            while k <= n
              numbers[k] = i if numbers[k] == 0
              k += i
            end
          end
          i += 1
        end

        numbers
      end

      def factorization(x, smallest_dividers)
        factors = []
        while smallest_dividers[x] > 0
          factors << smallest_dividers[x]
          x = x / smallest_dividers[x]
        end
        factors << x

        factors
      end
    end
  end
end