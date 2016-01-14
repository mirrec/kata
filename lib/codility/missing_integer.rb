module Codility
  module MissingInteger
    def solution(a)
      max = 1

      occurrence = {}
      a.each do |element|
        next if element <= 0

        max = element if element > max
        occurrence[element] = true
      end

      if occurrence.count == max
        return max +1
      end

      1.upto(max) do |element|
        unless occurrence.key?(element)
          return element
        end
      end
    end
  end
end