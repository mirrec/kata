# https://codility.com/programmers/task/max_product_of_three/
module Codility
  module Sorting
    module MaxProductOfThree
      # O(n * log(n))
      def solution(a)
        sorted = a.sort

        negative = 0
        zero = 0
        positive = 0

        sorted.each do |element|
          if element > 0
            positive += 1
          elsif element < 0
            negative += 1
          else
            zero += 1
          end
        end

        if negative >= 2
          nnp = sorted[0] * sorted[1] * sorted[-1]
          ppp = sorted[-3] * sorted[-2] * sorted[-1]

          (nnp > ppp) ? nnp : ppp
        else
          sorted[-3] * sorted[-2] * sorted[-1]
        end
      end
    end
  end
end