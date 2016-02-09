module Codility
  module Dynamic
    module NumberSolitaire
      def solution(a)
        results = [a[0]] + [0] * (a.length - 1)

        moves = [1,2,3,4,5,6]

        1.upto(a.length - 1) do |position|

          values = []
          moves.each do |move|
            next if position - move < 0

            values << a[position] + results[position - move]
          end

          results[position] = values.max
        end

        results[-1]
      end
    end
  end
end