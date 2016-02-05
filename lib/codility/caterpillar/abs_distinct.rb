module Codility
  module Caterpillar
    module AbsDistinct
      def solution(a)
        numbers = {}
        a.each do |number|
          numbers[number.abs] = true
        end

        numbers.keys.count
      end
    end
  end
end