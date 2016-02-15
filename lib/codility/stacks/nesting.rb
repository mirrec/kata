# https://codility.com/programmers/task/nesting/
module Codility
  module Stacks
    module Nesting
      # O(n)
      def solution(s)
        stack = 0

        s.each_char do |char|
          if char == '('
            stack += 1
          else
            if stack == 0
              return 0
            end

            stack -= 1
          end
        end

        (stack == 0) ? 1 : 0
      end
    end
  end
end