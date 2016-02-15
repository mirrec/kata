# https://codility.com/programmers/task/ladder/
module Codility
  module Fibonacci
    module Ladder
      def fib_numbers(n)
        results = [0] * (n + 1)
        results[1] = 1

        2.upto(n) do |i|
          results[i] = results[i - 1] + results[i - 2]
        end

        results
      end


      # O(size)
      def solution(a, b, size = nil)
        size ||= a.length + 1
        fibs = fib_numbers(size)

        results = []
        a.each_with_index do |number, index|
          exponent = b[index]
          results << fibs[number + 1] % (2**exponent)
        end

        results
      end
    end
  end
end