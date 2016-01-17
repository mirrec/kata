module Codility
  module Triangle
    def solution(a)
      sorted = a.select{ |element| element > 0 }.sort

      0.upto(sorted.length - 3) do |index|
        if (sorted[index] + sorted[index + 1] > sorted[index + 2]) &&
            (sorted[index + 1] + sorted[index + 2] > sorted[index]) &&
            (sorted[index] + sorted[index + 2] > sorted[index + 1])
          return 1
        end
      end

      0
    end
  end
end