module Codility
  module PermutationCheck

    def solution(a)
      uniq_numbers = {}
      max = 0
      a.each do |element|
        if uniq_numbers.key?(element)
          return 0
        end

        uniq_numbers[element] = true

        max = element if max < element
      end

      uniq_numbers.count == max ? 1 : 0
    end

    def sum_solution_incorrect(a)
      max = 0
      sum = 0
      a.each do |element|
        max = element if max < element

        sum += element
      end

      expected_sum = max * (max + 1) / 2
      expected_sum == sum ? 1 : 0
    end

    require 'set'
    def dam_smart_solution(a)
      set = Set.new(a)
      (set.count == a.max && set.count == a.count) ? 1 : 0
    end
  end
end