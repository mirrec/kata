# https://codility.com/programmers/task/count_distinct_slices/
module Codility
  module Caterpillar
    module CountDistinctSlices
      # O(n)
      def solution(m, a)
        count = 0
        slice = []
        slice_uniq = {}

        a.each do |element|
          if slice_uniq.key?(element)
            while slice.length > 0 && slice_uniq.key?(element)
              value = slice.shift
              slice_uniq.delete(value)
              count += slice.length
              if count > 1_000_000_000
                return 1_000_000_000
              end
            end
          end

          unless slice_uniq.key?(element)
            slice << element
            slice_uniq[element] = true
            count += 1
            if count > 1_000_000_000
              return 1_000_000_000
            end
          end
        end

        while slice.length > 0
          value = slice.shift
          slice_uniq.delete(value)
          count += slice.length
          if count > 1_000_000_000
            return 1_000_000_000
          end
        end

        count
      end
    end
  end
end