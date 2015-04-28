

def stocks(stockprice)
	stocks = Hash[stockprice.map.with_index {|value, index| [index, value]}]
	#turns array of stock prices to a hash with the array index as the key
	diff = {}
	#empty array to store the difference and day index of lowest & highest stockprice
	stocks.each do |key, value|
		#to each key and value in the hash
		stocks.each do |key1, value1|
			#compare to each other key and value in the hash
			diff[(value - value1)] = [key1, key]
			#find the difference between each value, push the difference to the diff hash with an array of the days.	
		end
	end
	puts diff
	diff.delete_if {|k, v| v[0] > v[1]}
	#makes sure that the buying day is before the selling day
	diff.max_by  {|k, v| puts "best day to buy is #{v[0]}, best day to sell is #{v[1]}, with a profit of #{k}" if k == diff.keys.max }
	#find the max difference, and print out the day of the lowest price, the day of the highest price, and the difference
end


stockprice = [10,2,5,8,9,1,6,7,8,10,1,18]
stockprice2 = [10, 1, 2, 4, 5, 6, 2, 7]

stocks(stockprice)
stocks(stockprice2)
