# https://codility.com/programmers/task/frog_jmp/
module Codility
  module TimeComplexity
    module FrogJump
      # O(1)
      def solution(x, y, d)
        ((y - x).to_f / d).ceil
      end
    end
  end
end
