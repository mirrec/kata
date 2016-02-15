# https://codility.com/programmers/task/tree_height/
module Codility
  module Future
    module TreeHeight
      Tree = Struct.new(:x, :l, :r)

      # fasted solution in ruby
      # O(n)
      def solution(a)
        depth = -1

        children_in_current_level = []

        if a
          children_in_current_level.push(a)
        end

        while children_in_current_level.length > 0
          depth += 1

          children_in_next_level = []

          children_in_current_level.each do |current_node|
            children_in_next_level.push(current_node.l) if current_node.l
            children_in_next_level.push(current_node.r) if current_node.r
          end

          children_in_current_level = children_in_next_level
        end

        depth
      end

      # simplest solution with O(n), but almost 2x slower than solution above
      def recursive_solution(a)
        return -1 if a == nil

        [recursive_solution(a.l), recursive_solution(a.r)].max + 1
      end
    end
  end
end