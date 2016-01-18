module Codility
  module TimeComplexity
    module FrogJump
      def solution(x, y, d)
        ((y - x).to_f / d).ceil
      end
    end
  end
end
