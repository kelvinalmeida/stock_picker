def stock_picker(stocks)
  best_element_purchased = -999
  best_sold_element = -999
  best_profit = -999

  stocks.each_with_index do |purchased_element, index_purchased_element|
    stocks.each_with_index do |sold_element, index_sold_element|

      if index_sold_element > index_purchased_element
        new_profit = sold_element - purchased_element

        if new_profit > best_profit
          best_element_purchased = index_purchased_element
          best_sold_element = index_sold_element
          best_profit = new_profit
        end
      end
    end
  end

  return [best_element_purchased, best_sold_element]
end


p stock_picker([17,3,6,9,15,8,6,1,10])
