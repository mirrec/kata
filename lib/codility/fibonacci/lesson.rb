module Codility
  module Fibonacci
    module Lesson
      def fib_slow(n)
        return n if n <= 1

        fib_slow(n - 1) + fib_slow(n - 2)
      end

      def fib_numbers(n)
        results = [0] * (n + 1)
        results[1] = 1

        2.upto(n) do |i|
          results[i] = results[i - 1] + results[i - 2]
        end

        results
      end
    end
  end
end