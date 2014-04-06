# given a hash of elapsed minutes and stock prices, find the best times to have bought and sold stock
# last update April 6 2014

time_and_price = { 0 => 100, 10 => 120, 20 => 140, 30 => 110, 40 => 100, 50 => 130 }

def find_times(hash)

  # keep track of lowest price so far
  lowest_price = hash.values[0]

  # keep track of greatest profit, time to buy, and time to sell
  max_profit = 0
  buy_time = hash.keys[1]
  sell_time = hash.keys[1]

  # iterate through hash and find profit from buying at lowest price so far
  hash.each do |k, v|

    if v < lowest_price
      lowest_price = v
      new_buy_time = k
    end

    # update greatest profit if profit from current price is greater    
    current_profit = v - lowest_price
    
    if current_profit > max_profit
      max_profit = current_profit
      sell_time = k
      buy_time = new_buy_time || buy_time
    end

  end

  # return times from greatest profit
  return "Buy at #{buy_time} min, sell at #{sell_time} min"

end