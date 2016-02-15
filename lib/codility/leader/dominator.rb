# https://codility.com/programmers/task/dominator/
module Codility
  module Leader
    module Dominator
      # O(n)
      def solution(a)
        value = nil
        size = 0

        a.each do |element|
          if size == 0
            value = element
            size += 1
          else
            if element != value
              size -= 1
            else
              size += 1
            end
          end
        end

        if size > 0
          candidate = value
        else
          return -1
        end

        occurrence = 0
        first_position = nil

        a.each_with_index do |element, index|
          if element == candidate
            occurrence += 1
            if first_position == nil
              first_position = index
            end
            if occurrence > (a.length / 2)
              return first_position
            end
          end
        end

        -1
      end
    end
  end
end