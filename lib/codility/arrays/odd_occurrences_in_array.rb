module Codility
  module Arrays
    module OddOccurrencesInArray
      def solution(a)
        once = {}

        a.each do |i|
          if once.key?(i)
            once.delete(i)
          else
            once[i] = true
          end
        end

        once.keys.first
      end
    end
  end
end