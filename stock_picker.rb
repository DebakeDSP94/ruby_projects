
def stock_picker(prices)
  max_profit = 0
  max_profit_index = nil
  prices.each_with_index do |price, index|
    prices[index + 1..-1].each do |other_price|
      profit = other_price - price
      if profit > max_profit
        max_profit = profit
        max_profit_index = [index, prices.index(other_price)]
      end
    end
  end
  max_profit_index
end

prices = [17, 3, 6, 9, 4, 6, 3, 22, 19, 15, 8, 6, 1, 10]
p stock_picker(prices)
