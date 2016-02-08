module Codility
  module Greedy
    module TieRopes
      def solution(k, a)
        part_sum = 0
        ropes = 0

        a.each do |element|
          if part_sum + element >= k
            ropes += 1
            part_sum = 0
          else
            part_sum += element
          end
        end

        ropes
      end
    end
  end
end