module Codility
  module Dynamic
    module Lesson

      def coin_changing(amount, coins)
        minimal_coins = [0] * amount
        last_coins = [0] * amount

        1.upto(amount) do |value|

          minimal_coin = 1/0.0
          last_coin = nil

          coins.each do |coin|
            next if value - coin < 0

            if minimal_coin > minimal_coins[value - coin] + 1
              minimal_coin = minimal_coins[value - coin] + 1
              last_coin = coin
            end
          end

          minimal_coins[value] = minimal_coin
          last_coins[value] = last_coin
        end

        # puts minimal_coins.inspect
        # puts last_coins.inspect
        minimal_coins[amount]
      end

      def frog(jumps, position)
        dp = [1] + [0] * position
        1.upto(position) do |j|
          # binding.pry
          jumps.each do |jump|
            if jump <= j
              dp[j] = dp[j] + dp[j - jump]
            end
          end
        end

        dp[position]
      end
    end
  end
end