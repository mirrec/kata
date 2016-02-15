# https://codility.com/programmers/task/fib_frog/
# https://codesays.com/2014/solution-to-fib-frog-by-codility/
# I tried really hard to improve performance, but I am not able to make this faster.
# I am getting only 33% in performance
module Codility
  module Fibonacci
    module FibFrog

      def fib_numbers_to(n)
        results = [0] * 2
        results[1] = 1

        2.upto(n) do |i|
          res = results[i - 1] + results[i - 2]
          break if res > n

          results << res
        end

        results
      end

      # O(N*log(N))
      def solution(a)
        fib_numbers = {}
        fibs = fib_numbers_to(a.length + 2)
        fibs.each do |n|
          fib_numbers[n] = true
        end

        a << 1 # add last position

        points = a.each_with_index.select{ |leaf_or_not, position| leaf_or_not == 1 }.map{ |_, position| position + 1 }
        points.unshift(0) # add start position

        faster_minimal_path(points, fib_numbers)
      end

      def faster_minimal_path(points, fibonacci_numbers)
        visited = {}

        current_positions = [0]

        jumps = -1
        while current_positions.length > 0
          jumps += 1

          next_positions = []

          current_positions.each do |current_position|
            points.reverse.select do |point|
              point > current_position && fibonacci_numbers.key?(point - current_position) && ! visited.key?(point)
            end.each do |point|
              if point == points.last
                return jumps + 1
              end

              next_positions.push(point)
              visited[point] = true
            end
          end

          current_positions = next_positions
        end

        -1
      end


      def breath_first_search(points, fibonacci_numbers)
        visited = {}

        queue = []
        queue.push(value: points[0], jumps: 0)
        visited[points[0]] = true

        expected_position = points[-1]

        while queue.length > 0
          current_node = queue.shift

          # if current_node[:value] == expected_position
          #   return current_node[:jumps]
          # end

          edges = points.map { |point| point - current_node[:value] }.
              select { |jump_size| jump_size > 0 && fibonacci_numbers.key?(jump_size) && visited.key?(current_node[:value] + jump_size) == false }

          edges.reverse.each do |jump_size|
            if current_node[:value] + jump_size == expected_position
              return current_node[:jumps] + 1
            end

            queue.push({value: current_node[:value] + jump_size, jumps: current_node[:jumps] + 1})
            visited[current_node[:value] + jump_size] = true
          end
        end

        -1
      end
    end
  end
end