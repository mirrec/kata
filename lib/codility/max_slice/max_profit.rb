module Codility
  module MaxSlice
    module MaxProfit
      def solution(a)
        return 0 if a.length < 2

        max_profit = 0
        min = a[0]

        a.each do |element|
          min = [min, element].min
          max_profit = [max_profit, element - min].max
        end

        max_profit
      end
    end
  end
end