# https://codility.com/programmers/task/cyclic_rotation/
module Codility
  module Arrays
    module CyclicRotation
      # O(n)
      def solution(a, k)
        if a.length > 0
          k.times do
            last = a.pop
            a.unshift(last)
          end
          a
        else
          a
        end
      end
    end
  end
end