module Codility
  module Leader
    module EquiLeader
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
          return 0
        end

        occurrence = a.select { |element| element == candidate }.count

        left_size = 0
        right_size = a.length
        leaders_in_left = 0
        leaders_in_right = occurrence

        leader = candidate

        equi = 0
        a.each do |element|
          left_size += 1
          right_size -= 1

          if element == leader
            leaders_in_left += 1
            leaders_in_right -= 1
          end

          if (leaders_in_left > left_size / 2) && (leaders_in_right > right_size / 2)
            equi += 1
          end
        end

        equi
      end
    end
  end
end