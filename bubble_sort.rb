def bubble_sort(array)
	items=array.length
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
end
bubble_sort([3, 63, 9, 2, 0, 2])


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

