module Codility
  module Stacks
    module StoneWall
      def solution(h)
        stack = []

        stones = 0

        h.each do |element|
          last = stack[-1]

          if last == nil
            stack.push(element)
            stones += 1
          elsif element > last
            stack.push(element)
            stones += 1
          elsif element < last
            while stack[-1] != nil && element < stack[-1]
              stack.pop
            end

            last = stack[-1]
            if last == nil
              stack.push(element)
              stones += 1
            elsif element > last
              stack.push(element)
              stones += 1
            end
          end
        end

        stones
      end
    end
  end
end