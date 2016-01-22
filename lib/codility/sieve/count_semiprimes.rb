module Codility
  module Sieve
    module CountSemiprimes
      SemiValue = Struct.new(:remaining, :state, :divider_count) do
        def try_prime(n)
          return false if state == :not

          if divider_count == 0 && (n * n) == remaining
            self.remaining = 1
            self.divider_count = 2
          else
            self.remaining = remaining / n
            self.divider_count += 1
          end

          if divider_count > 2
            not_semiprime!
          elsif divider_count == 2 && remaining == 1
            self.state = :semiprime
          elsif remaining == 1
            self.state = :not
          else
            self.state = :candidate
          end
        end

        def semiprime?
          state == :semiprime
        end

        def prime?
          state == :untouched
        end

        def not_semiprime!
          self.state = :not
        end
      end

      def solution(n, p, q)
        semi = fast_semiprimes(n)
        semi_prefix = [0] * (semi.length + 1)
        semi.each_with_index do |element, index|
          semi_prefix[index + 1] = semi_prefix[index] + element
        end

        semi_prefix

        results = []

        p.each_with_index do |left_border, index|
          right_border = q[index]

          results << semi_prefix[right_border + 1] - semi_prefix[left_border]
        end

        results
      end

      def fast_semiprimes(n)
        numbers = 0.upto(n).map{ |i| SemiValue.new(i, :untouched, 0) }

        numbers[0].not_semiprime!
        numbers[1].not_semiprime!

        i = 2
        while i <= n
          if numbers[i].prime?
            k = i
            while k <= n
              numbers[k].try_prime(i)
              k += i
            end
          end
          i += 1
        end

        numbers.each.map{ |value, index| value.semiprime? ? 1 : 0 }
      end

      def correct_semiprimes(n)
        0.upto(n).map do |i|
          factorization(i, smallest_dividers(n))
        end.map { |factors| factors.count }.map { |factors| factors == 2 ? 1 : 0 }
      end

      def smallest_dividers(n)
        numbers = [0] * (n + 1)
        numbers[0] = numbers[1] = 0

        i = 2
        while i <= n
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

      def correct_solution(n, p, q)
        factor_counts = 0.upto(n).map do |i|
          factorization(i, smallest_dividers(n))
        end.map { |factors| factors.count }

        results = []

        p.each_with_index do |left_border, index|
          right_border = q[index]

          results << factor_counts[left_border..right_border].select { |factor| factor == 2 }.count
        end

        results
      end
    end
  end
end