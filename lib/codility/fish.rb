module Codility
  module Fish

    class CustomStuck
      def initialize
        @stuck = []
      end

      def add(element)
        @stuck.push(element)
      end

      def take_last
        @stuck.pop
      end

      def last
        @stuck[-1]
      end

      def size
        @stuck.length
      end

      def present?
        ! @stuck.empty?
      end

      def empty?
        @stuck.empty?
      end
    end

    def solution(a, b)
      stack = CustomStuck.new

      a.each_with_index do |fish_size, index|
        fish_direction = b[index]

        if stack.present? && stack.last[1] == 1 && fish_direction == 0
          # interaction

          if stack.last[0] > fish_size
            # fish with 1 direction stays
          else
            while stack.present? && stack.last[1] == 1
              if stack.last[0] > fish_size
                break
              else
                stack.take_last
              end
            end

            if stack.empty? || stack.last[1] == 0
              stack.add([fish_size, fish_direction])
            end
          end
        else
          stack.add([fish_size, fish_direction])
        end
      end

      stack.size
    end
  end
end