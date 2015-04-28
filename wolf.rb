stockprice = [10,2,5,8,9,1,6,7,8,10]

def stocks(stockprice)
	stocks = Hash[stockprice.map.with_index {|value, index| [index, value]}]
	day = []
	day << (stocks.min_by {|key, value| value})
	day << (stocks.max_by {|key, value| value})
	puts day


end
