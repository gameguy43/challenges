# given a hash of elapsed minutes and stock prices, find the best times to have bought and sold stock
# completed update April 6 2014

def find_times(hash)

  lowest_price = hash.values[0]
  buy_time     = hash.keys[0]
  new_buy_time = hash.keys[0]
  sell_time    = hash.keys[0]
  max_profit   = 0

  hash.each do |time, price|

    if price < lowest_price
      lowest_price = price
      new_buy_time = time
    end

    current_profit = price - lowest_price
    
    if current_profit > max_profit
      max_profit = current_profit
      sell_time = time
      buy_time = new_buy_time
    end

  end

  return "Buy at #{buy_time} min, sell at #{sell_time} min"

end