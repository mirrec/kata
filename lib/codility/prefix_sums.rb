module Codility
  module PrefixSums
    def solution(a, k, n)
      prefix_sums = [0] * (a.length + 1)

      a.each_with_index { |element, index| prefix_sums[index + 1] = prefix_sums[index] + element }
      partial_sum = lambda { |sums, x, y| sums[y + 1] - sums[x] }

      prefix_sums


      # TODO
    end
  end
end