module Codility
  module Brackets
    def solution(a)
      stack = []

      closing = {
          ")" => "(",
          "}" => "{",
          "]" => "[",
      }

      a.each_char do |char|

        if ["(", "{", "["].include?(char)
          stack.push(char)
        else
          last = stack.pop

          if closing[char] != last
            return 0
          end
        end
      end

      (stack.empty?) ? 1 : 0
    end
  end
end