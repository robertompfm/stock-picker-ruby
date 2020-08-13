def stock_picker(arr)
  max = 0
  result = [0, 0]
  for buy_day in 0...arr.length do
    for sell_day in buy_day...arr.length do
      diff = arr[sell_day] - arr[buy_day]
      if diff > max
        max = diff
        result = [buy_day, sell_day]
      end
    end
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])