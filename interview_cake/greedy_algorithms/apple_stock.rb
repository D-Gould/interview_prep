
def get_max_profit(stock_prices)
  if stock_prices.length < 2
    raise ArgumentError, "Getting a profit requires at least 2 prices"
  end

  lowest_price = stock_prices[0]
  best_profit = stock_prices[1] - stock_prices[0]

  stock_prices.each_with_index do |price, index|
    next if index.zero?

    current_profit = price - lowest_price
    best_profit = [best_profit, current_profit].max

    lowest_price = [lowest_price, price].min
  end

  return best_profit
end

puts get_max_profit([10, 7, 5, 8, 11, 9]) # 6
puts get_max_profit([10, 7, 8, 11, 9, 5]) # 4
puts get_max_profit([7, 7, 7, 7, 7, 8]) # 1
puts get_max_profit([7, 2]) # -5

# trying to find the greatest difference between 2 nums
