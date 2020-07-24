
def bubble_sort
	puts 'Enter number of items'

	total_items = gets.chomp

	items = total_items.to_i

	array = []

	0.upto(items - 1) do |i|
		array[i] = gets.chomp
	end

	puts "Total Number of items in the array is:  #{total_items}"

	puts "Youre array is #{array}"

	array.each do
		i = 0
		count = 0
		while i < items - 1
			array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
			i += 1
			count += 1
		end
		break if count.zero?
	end

	puts "\nAnd sorted array is #{array}"
end

bubble_sort

def bubble_sort_by(arr)
	for i in 0..arr.length - 2 do
		for j in 0..arr.length - 2 do
			if (yield arr[j], arr[j + 1]).positive?
				arr[j], arr[j + 1] = arr[j + 1], arr[j]
			end
		end
	end
	return arr
end

sorted_array = bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
	left.length - right.length
end
puts sorted_array.join(',')
print "\nThank You!\n"
