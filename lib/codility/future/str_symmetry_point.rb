module Codility
  module Future
    module StrSymmetryPoint
      def solution(s)
        return -1 if s.length == 0

        left = 0
        right = s.length - 1

        while left < right
          if s[left] != s[right]
            return -1
          else
            left += 1
            right -= 1
          end
        end

        if left == right
          left
        else
          -1
        end
      end
    end
  end
end