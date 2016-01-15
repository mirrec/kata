module Codility
  module GenomicRangeQuery
    def solution(s, p, q)
      map = {
          'A' => 1,
          'C' => 2,
          'G' => 3,
          'T' => 4,
      }

      prefix_sums = [[0, 0, 0, 0]]

      s.each_char.each_with_index do |char, index|
        value = map.fetch(char)

        new_sum_element = prefix_sums[index].dup
        new_sum_element[value - 1] += 1

        prefix_sums << new_sum_element
      end

      results = []

      p.each_with_index do |element_p, index|
        element_q = q[index]

        prefix_sums[element_q + 1].each_with_index do |element, inner_index|
          if element - prefix_sums[element_p][inner_index] > 0
            results << inner_index + 1
            break
          end
        end
      end

      results
    end


    def correct_solution(s, p, q)
      map = {
          'A' => 1,
          'C' => 2,
          'G' => 3,
          'T' => 4,
      }

      results = []

      p.each_with_index do |element_p, index|
        element_q = q[index]

        min = 4
        s[element_p..element_q].each_char do |char|
          if min > map.fetch(char)
            min = map.fetch(char)
          end
        end

        results << min
      end

      results
    end
  end
end